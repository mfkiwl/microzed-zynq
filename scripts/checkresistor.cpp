#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <set>
#include <thread>
#include <algorithm>
#include <tuple>
#include <functional>

//#define NDEBUG

typedef struct rinfo {
	std::string ostr;
	double r;	/// resistor, unit: ohm
} rinfo_t;

typedef struct rpair {
	const rinfo_t & r1;
	const rinfo_t & r2;
	double power;
} rpair_t;

typedef struct vpairs {
	std::vector<rpair_t> pairs;
	double volt;
	double off;

	typedef std::tuple<
		  std::vector<rpair_t>::const_iterator	// [first
		, std::vector<rpair_t>::const_iterator	// last)
	> range_t;
	typedef std::vector<rpair_t>::const_iterator iterator;
} vpairs_t;

typedef struct solution {
	std::vector<vpairs_t::iterator> sels;
	double power;
	std::size_t res_num;

	void refresh4newSels()
	{
		power = 0;
		std::set<const rinfo_t *> s;
		for (auto & i : sels) {
			s.insert(&(i->r1));
			s.insert(&(i->r2));
			power += i->power;
		}
		res_num = s.size();
	}

	void print()
	{
		std::cout << "power(" << power << ") ";
		std::cout << "number(" << res_num << ") ";
		for (auto i : sels) {
			std::cout << "r1(" << i->r1.r << ", " << i->r2.r << ") ";
		}
		std::cout << std::endl;
	}
} solution_t;

void readResistorInfo(std::vector<rinfo_t> & res_info, std::string && file_name)
{
	std::fstream s(file_name, s.in);

	for (std::string line; std::getline(s, line); ) {
		std::size_t pos = 0;
		double tmp = std::stod(line, &pos);
		switch (line[pos]) {
			case 'm':
				tmp *= 0.001;
				res_info.push_back({ line, tmp });
				break;
			case 'k':
				tmp *= 1000;
				res_info.push_back({ line, tmp });
				break;
			case 'K':	/// skip it, the K and k is same
				tmp *= 1000;
				///res_info.push_back({ line, tmp });
				break;
			case 'M':
				tmp *= 1000000;
				res_info.push_back({ line, tmp });
				break;
			default:
				std::cout << "error!!!!" << std::endl;
				break;
		}
	}
	std::sort(res_info.begin(), res_info.end(), [](const rinfo_t & a, const rinfo_t & b) {
		return a.r < b.r;
	});
}

double calcVoltage(double r1, double r2)
{
	return (r1 + r2)/r2 * 0.8;
}

double calcR2(double v, double r1)
{
	return (r1 * 0.8) / (v - 0.8);
}

double calcPower(double r1, double r2)
{
	return (r1 + r2) * (0.8 * 0.8) / (r2 * r2);
}

struct AuxStruct
{
	bool operator() (const rinfo_t & s, double i) const { return s.r < i; }
	bool operator() (double i, const rinfo_t & s) const { return i < s.r; }
};

void findpairs(std::vector<rpair_t> & dst, const std::vector<rinfo_t> & src, double base_v, double off_v)
{
	const double lftv = base_v - off_v;
	const double rtv = base_v + off_v;
	for (auto & i : src) {
		const double r1 = i.r;
		const double lftr2 = calcR2(rtv, r1);
		const double rtr2 = calcR2(lftv, r1);

		auto lower = std::lower_bound(src.begin(), src.end(), lftr2, AuxStruct{});
		auto upper = std::upper_bound(src.begin(), src.end(), rtr2, AuxStruct{});
		while (lower != upper) {
			const rinfo_t & r1info = i;
			const rinfo_t & r2info = *lower;
			dst.push_back({ r1info, r2info, calcPower(r1info.r, r2info.r) });
			++lower;
		}
	}
}

void spliceRanges4MultiThread(
	std::vector< std::vector< vpairs_t::range_t > > & ret,	// thread - voltage
	const std::vector< vpairs_t > & pair_info		// voltage
)
{
	std::size_t remainPairs = pair_info[0].pairs.size();
	std::size_t startN = 0;
	std::size_t remainthread = ret.size();

	for (auto & i : ret) {
		const std::size_t this_num = (remainPairs + remainthread - 1) / remainthread;

		auto vpi_it = pair_info.begin();
		i.push_back(std::make_tuple(
			  vpi_it->pairs.begin() + startN
			, vpi_it->pairs.begin() + startN + this_num
		));
		while ((++vpi_it) != pair_info.end()) {
			i.push_back(std::make_tuple(
				  vpi_it->pairs.begin()
				, vpi_it->pairs.end()
			));
		}

		startN += this_num;
		remainPairs -= this_num;
		--remainthread;
	}
#ifndef NDEBUG
	for (auto & i : ret) {
		std::cout << "--- ";
		for (auto & j : i) {
			std::cout << "("<< std::get<1>(j) - std::get<0>(j) << ");";
		}
		std::cout << std::endl;
	}
#endif
}

void multithreadprocess(
	std::vector<solution_t> & result,
	const std::vector<vpairs_t::range_t> & pair_ranges,
	std::function<bool(const solution_t &)> solValidater,
	std::size_t thread_idx
     )
{
#ifndef NDEBUG
	const bool printth = ((1 << thread_idx) & 0x1);
	if (printth) {
		std::cout << "print thread " << thread_idx << std::endl;
	}
#endif
	solution_t sol;
	std::vector<vpairs_t::iterator> & serial = sol.sels;
	do {
		std::size_t cursize = serial.size();

		if (cursize < pair_ranges.size()) {
			serial.push_back(std::get<0>(pair_ranges[cursize]));
		}
		else {
			sol.refresh4newSels();
			if (solValidater(sol)) {
				result.push_back(sol);
			}

			while (!serial.empty()) {
				const auto rtidx = serial.size() - 1;
				++(serial[rtidx]);
				if (serial[rtidx] != std::get<1>(pair_ranges[rtidx])) {
					break;
				}
				serial.pop_back();
			}

#ifndef NDEBUG
			if (printth) {
				if (serial.size() == 1) {
					std::cout << " loop: " << thread_idx << ", "
						<< serial[0]->r1.r
						<< ", " << serial[0]->r2.r << std::endl;
				}
			}
#endif

			if (serial.empty()) {
				break;
			}
		}
	} while (true);
}

static constexpr std::size_t thread_num = 4;
bool validateSolution(const solution_t & sol)
{
	return sol.res_num <= 4;
}

int main()
{
	/// read file
	std::vector<rinfo_t> res_info;
	readResistorInfo(res_info, "resistor.txt");

	/// find all pairs
	std::vector< vpairs_t > pair_info;
	pair_info.push_back({{}, 1, 0.001});	/// error 1%: +-0.004V	1/4
	pair_info.push_back({{}, 1.8, 0.01});	/// error 1%: +-0.02V	5/4
	pair_info.push_back({{}, 1.5, 0.01});	/// error 1%: +-0.014V	7/8
	pair_info.push_back({{}, 3.3, 0.01});	/// error 1%: +-0.05V	25/8

	{
		std::vector<std::thread> threads;
		for (auto & i : pair_info) {
			threads.push_back(std::thread([&i, &res_info](){
				findpairs(i.pairs, res_info, i.volt, i.off);
			}));
		}

		for (auto & i : threads) {
			if (i.joinable()) {
				i.join();
			}
		}

		for (auto & i : pair_info) {
			std::cout << "fullfil " << i.volt << "V(+-" << i.off << "V) pairs " << i.pairs.size() << std::endl;
		}
	}

	// split for multi threads
	std::vector< std::vector<solution_t> > v_result;
	{
		v_result.resize(thread_num);
		std::vector< std::vector<vpairs_t::range_t> > thread_volt_ranges(thread_num);

		spliceRanges4MultiThread(thread_volt_ranges, pair_info);

		// find solution through multi threads
		std::vector<std::thread> threads;
		for (std::size_t i = 0; i < thread_num; ++i) {
			threads.push_back(std::thread(
				multithreadprocess,
				std::ref(v_result[i]),
				std::ref(thread_volt_ranges[i]),
				validateSolution,
				i
			));
		}

		for (auto & i : threads) {
			if (i.joinable()) {
				i.join();
			}
		}
	}

	/// merge sort by power
	std::vector<solution_t *> result;
	{
		for (auto & i : v_result) {
			for (auto & j : i) {
				result.push_back(&j);
			}
		}

		std::sort(result.begin(), result.end(), [](solution_t * l, solution_t * r) {
			return l->power < r->power;
		});
	}

	/// print result
	std::cout << "result: " << result.size() << std::endl;
	for (std::size_t i = 0; i < std::min((std::size_t)10, result.size()); ++i) {
		result[i]->print();
	}
	std::cout << std::endl;

	return 0;
}
