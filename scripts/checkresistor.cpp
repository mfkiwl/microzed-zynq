#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <set>
#include <thread>
#include <algorithm>
#include <tuple>

//#define NDEBUG

typedef struct rinfo {
	std::string ostr;
	double r;	/// resistor, unit: ohm
} rinfo_t;

typedef struct rpinfo {
	std::size_t r1_idx;
	std::size_t r2_first;	/// r2: [first, last)
	std::size_t r2_last;
} rpinfo_t;

typedef struct rpair {
	std::size_t r1;
	std::size_t r2;
	double power;
} rpair_t;

typedef struct vpairs {
	std::vector<rpair_t> pairs;
	double volt;
	double off;

	typedef std::tuple<
		  std::vector<rpair_t>::const_iterator	// [first
		, std::vector<rpair_t>::const_iterator	// last)
#ifndef NDEBUG
		, std::vector<rpair_t>::const_iterator	// aux begin
#endif
	> range_t;
	typedef std::vector<rpair_t>::const_iterator iterator;
} vpairs_t;

void readResistorInfo(std::vector<rinfo_t> & res_info, std::string && file_name)
{
	std::fstream s(file_name, s.in);

	for (std::string line; std::getline(s, line); ) {
		std::size_t pos = 0;
		double tmp = std::stod(line, &pos);
		switch (line[pos]) {
			case 'm':
				tmp *= 0.001;
				break;
			case 'k':
				tmp *= 1000;
				break;
			case 'K':
				tmp *= 1000;
				break;
			case 'M':
				tmp *= 1000000;
				break;
			default:
				std::cout << "error!!!!" << std::endl;
				break;
		}
		res_info.push_back({ line, tmp });
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

void findpairs(std::vector<rpinfo_t> & dst, const std::vector<rinfo_t> & src, double base_v, double off_v)
{
	const double lftv = base_v - off_v;
	const double rtv = base_v + off_v;
#ifndef NDEBUG
	const double printv = 1.0;
	if (base_v == printv) {
		std::cout << "rinfo_t: " << src.size() << ", " << off_v << ", " << rtv - lftv << std::endl;
	}
#endif
	auto totalN = src.size();
	for (std::size_t i = 0; i < totalN; ++i) {
		const double r1 = src[i].r;
		const double lftr2 = calcR2(rtv, r1);
		const double rtr2 = calcR2(lftv, r1);

		auto lower = std::lower_bound(src.begin(), src.end(), lftr2, AuxStruct{});
		auto upper = std::upper_bound(src.begin(), src.end(), rtr2, AuxStruct{});

		if (lower != upper) {
#if 0
			for (auto it = lower; it != upper; ++it) {
				const double volt = calcVoltage(r1, it->r);
				if (base_v == printv) {
					std::cout << "hehe " << base_v << "," << off_v << ": " << volt << "     " << r1 << ", " << it->r << std::endl;
				}
				if (volt < lftv || rtv < volt) {
					std::cout << "EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " << std::endl;
					exit (1);
				}
			}
#endif
			dst.push_back({ i,
				(std::size_t)(lower - src.begin()),
				(std::size_t)(upper - src.begin())
			});
		}
	}
}

void rpinfo2rpair(std::vector<rpair_t> & dst, const std::vector<rpinfo_t> & src, const std::vector<rinfo_t> & data)
{
	for (auto & i : src) {
		const std::size_t r1 = i.r1_idx;
		for (auto j = i.r2_first; j < i.r2_last; ++j) {
			const std::size_t r2 = j;
			dst.push_back({r1, r2, calcPower(data[r1].r, data[r2].r)});
		}
	}
}

void printpairs(const std::vector<rpair_t> & dst)
{
	for (auto & i : dst) {
		std::cout << i.r1 << "; " << i.r2 << std::endl;
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
#ifndef NDEBUG
			, vpi_it->pairs.begin()
#endif
		));
		while ((++vpi_it) != pair_info.end()) {
			i.push_back(std::make_tuple(
				  vpi_it->pairs.begin()
				, vpi_it->pairs.end()
#ifndef NDEBUG
				, vpi_it->pairs.begin()
#endif
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
			std::cout << "("
				<< std::get<2>(j) - std::get<0>(j) << ", "
				<< std::get<2>(j) - std::get<1>(j) << ");";
		}
		std::cout << std::endl;
	}
#endif
}

void processCombine(
	std::vector< std::vector<vpairs_t::iterator> > & ret,
	const std::vector<vpairs_t::iterator> & serial,
	const std::vector<rinfo_t> & res_info,
	const std::size_t limit)
{
	std::set<std::size_t> s;
	for (auto & i : serial) {
		s.insert(i->r1);
		s.insert(i->r2);
	}

	/// condition check
	if (s.size() > limit) {
		return;
	}

	ret.push_back(serial);
}

void multithreadprocess(
	std::vector<std::vector<vpairs_t::iterator>> & result,
	const std::vector<vpairs_t::range_t> & pair_ranges,
	const std::vector<rinfo_t> & res_info,
	std::size_t thread_idx
     )
{
#ifndef NDEBUG
	const bool printth = ((1 << thread_idx) & 0x1);
	if (printth) {
		std::cout << "print thread " << thread_idx << std::endl;
	}
#endif
	std::vector<vpairs_t::iterator> serial;
	do {
		std::size_t cursize = serial.size();

		if (cursize < pair_ranges.size()) {
			serial.push_back(std::get<0>(pair_ranges[cursize]));
		}
		else {
			processCombine(result, serial, res_info, 5);

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
						<< serial[0]->r1
						<< ", " << serial[0]->r2 << std::endl;
				}
			}
#endif

			if (serial.empty()) {
				break;
			}
		}
	} while (true);
}

int main()
{
	/// read file
	std::vector<rinfo_t> res_info;
	readResistorInfo(res_info, "resistor.txt");

	/// find all pairs
	std::vector< vpairs_t > pair_info;
	pair_info.push_back({{}, 1, 0.001});	/// error 1%: +-0.004V	1/4
	pair_info.push_back({{}, 1.8, 0.001});	/// error 1%: +-0.02V	5/4
	pair_info.push_back({{}, 1.5, 0.001});	/// error 1%: +-0.014V	7/8
	pair_info.push_back({{}, 3.3, 0.001});	/// error 1%: +-0.05V	25/8

	{
		std::vector<std::thread> threads;
		for (auto & i : pair_info) {
			threads.push_back(std::thread(
				[&i, &res_info](){
					std::vector<rpinfo_t> tmp;
					findpairs(tmp, res_info, i.volt, i.off);
					rpinfo2rpair(i.pairs, tmp, res_info); 
				}
			));
		}

		for (auto & i : threads) {
			if (i.joinable()) {
				i.join();
			}
		}

		for (auto & i : pair_info) {
			std::cout << "fullfil " << i.volt << "V(+-" << i.off << "V) pairs " << i.pairs.size() << std::endl;
#if 0
			for (auto & j : i.pairs) {
				std::cout << " --- " << j.r1 << ", " << j.r2 << std::endl;
			}
#endif
		}
	}

	// split for multi thread
	constexpr std::size_t thread_num = 4;
	std::vector< std::vector<std::vector<vpairs_t::iterator>> > v_result(thread_num);
	std::vector< std::vector<vpairs_t::range_t> > thread_volt_ranges(thread_num);

	spliceRanges4MultiThread(thread_volt_ranges, pair_info);

	std::vector<std::thread> threads;
	for (std::size_t i = 0; i < thread_num; ++i) {
		threads.push_back(std::thread(
			multithreadprocess,
			std::ref(v_result[i]),
			std::ref(thread_volt_ranges[i]),
			std::ref(res_info),
			i
		));
	}

	for (auto & i : threads) {
		if (i.joinable()) {
			i.join();
		}
	}

	std::cout << "result: ";
	for (auto i : v_result) {
		std::cout << i.size() << " + ";
	}
	std::cout << std::endl;

#if 0
	/// result
	for (std::size_t i = 0; i < v_result[0][0].size(); ++i) {
		const rpair_t & rrr = (*pair_info[i])[v_result[0][0][i]];
		std::cout << rrr.s1 << ", " << rrr.s2 << std::endl;
	}
	std::vector<std::vector<std::size_t>> real_result(0);
	for (auto & i : v_result) {
		std::cout << "move " << i.size() << std::endl;
		while (!i.empty()) {
			std::cout << "   move1 " << i.size() << std::endl;
				for (std::size_t j = 0; j < (*i.rbegin()).size(); ++j) {
					const rpair_t & rrr = (*pair_info[j])[(*i.rbegin())[j]];
					std::cout << rrr.s1 << ", " << rrr.s2 << std::endl;
				}
			std::move_backward(i.end()-1, i.end(), real_result.end());
			std::cout << "   move2 " << i.size() << std::endl;
		}
		//std::move_backward(i.begin(), i.end(), real_result.end());
	}
	std::cout << "real result number is " << real_result.size() << std::endl;
	

	std::cout << "total number is " << modelN << std::endl;
	for (auto & i : v_result) {
		std::cout << "result number is " << i.size() << std::endl;
	}
#endif
	return 0;
}
