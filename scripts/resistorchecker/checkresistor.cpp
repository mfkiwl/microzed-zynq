#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <set>
#include <thread>
#include <algorithm>
#include <tuple>
#include <functional>
#include <chrono>
#include <map>

//#define NDEBUG

typedef struct rinfo {
	std::string ostr;
	double r;	/// resistor, unit: ohm
	std::size_t n;	/// model number
} rinfo_t;

typedef struct rpair {
	const rinfo_t & r1;
	const rinfo_t & r2;
	double power;
	double volt_off;	/// voltage offset
} rpair_t;

typedef struct vpairs {
	std::vector<rpair_t> pairs;
	double volt;
	double off;	/// voltage offset limit

	std::function<double(double,double)> calcVolt;
	std::function<double(double,double)> calcR2;
	std::function<double(double,double)> calcPower;

	typedef std::tuple<
		  std::vector<rpair_t>::const_iterator	// [first
		, std::vector<rpair_t>::const_iterator	// last)
	> range_t;
	typedef std::vector<rpair_t>::const_iterator iterator;
} vpairs_t;

typedef struct solution {
	std::vector<vpairs_t::iterator> sels;
	double power = 0;
	std::size_t res_num = 0;	/// how many resistor (by resistance value)
	std::size_t min_modeln = 0xFFFFFFFF;	/// the min model number of all resistors
	double voff_sum = 0;	/// sum of offset for all voltages

	/// NOTE: I have tried to use a std::map<const rinfo_t *, std::size_t>
	///       to store resistor info, in which the VALUE represents the
	///       number of resistor. And then implement push_back/pop_back
	///       for this structure, in which we will update the members.
	///       but I can't update the 'min_modeln' with high efficiency.
	///       so here just refresh4newSels whenever push/pop 'sels'.

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
		min_modeln = 0xFFFFFFFF;
		voff_sum = 0;
		for (auto & i : sels) {
			if (i->r1.n < min_modeln) { min_modeln = i->r1.n; }
			if (i->r2.n < min_modeln) { min_modeln = i->r2.n; }
			voff_sum += std::abs(i->volt_off);
		}
	}

	void print() const
	{
		std::cout << "power(" << power << ") ";
		std::cout << "model(" << res_num << ") ";
		std::cout << "sumVoff(" << voff_sum << ") ";
		for (auto i : sels) {
			std::cout << "("
				<< i->r1.ostr << "/"
				<< i->r2.ostr
				//<< ", " << i->volt_off
				<< ") ";
		}
		std::cout << "MMN(" << min_modeln << ")";
		std::cout << std::endl;
	}
} solution_t;

void readResistorInfo(std::vector<rinfo_t> & res_info, std::string && file_name)
{
	std::fstream s(file_name, s.in);

	for (std::string line; std::getline(s, line); ) {
		std::size_t pos = 0;
		double tmp = std::stod(line, &pos);
		const std::string ostr = std::string(line, 0, pos+1);
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
			//std::cout << "error!!!! " << line[pos] << "!!!" << std::endl;
			break;
		}

		/// skip it, the K and k is same
		if (line[pos] == 'K') {
			continue;
		}

		/// find number
		while (line[pos] < '0' || '9' < line[pos]) {
			++pos;
		}
		std::size_t n = std::strtoul(&line[pos], nullptr, 10);
		res_info.push_back({ ostr, tmp, n });
	}
	std::sort(res_info.begin(), res_info.end(), [](const rinfo_t & a, const rinfo_t & b) {
		return a.r < b.r;
	});
}

struct AuxStruct
{
	bool operator() (const rinfo_t & s, double i) const { return s.r < i; }
	bool operator() (double i, const rinfo_t & s) const { return i < s.r; }
};

/// find resitor-pair for specific voltage, with offset limit.
void findpairs(vpairs_t & dst, const std::vector<rinfo_t> & src)
{
	const double base_v = dst.volt;
	const double off_v = dst.off;

	const double lftv = base_v - off_v;
	const double rtv = base_v + off_v;
	for (auto & i : src) {
		const double r1 = i.r;
		const double lftr2 = dst.calcR2(lftv, r1);
		const double rtr2 = dst.calcR2(rtv, r1);

		auto lower = std::lower_bound(src.begin(), src.end(), std::min(lftr2, rtr2), AuxStruct{});
		auto upper = std::upper_bound(src.begin(), src.end(), std::max(lftr2, rtr2), AuxStruct{});
		while (lower != upper) {
			const rinfo_t & r1info = i;
			const rinfo_t & r2info = *lower;
			dst.pairs.push_back({ r1info, r2info, dst.calcPower(r1info.r, r2info.r), dst.calcVolt(r1info.r, r2info.r)-base_v });
			++lower;
		}
	}
}

/// splice first voltage pairs for multi thread, others reserve full range.
/// TODO: maybe we should split the voltage which has the max number of pairs.
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

/// find all solution in some range of data source.
/// @pair_ranges: whose index represents specific voltage, and the corresponding
///               element represent some range of its pairs data.
void multithreadprocess(
	std::vector<solution_t> & result,
	const std::vector<vpairs_t::range_t> & pair_ranges,
	std::function<bool(const solution_t &)> solValidater,
	std::size_t thread_idx)
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
		/// NOTE: if we don't want stop iterate early, i.e. validate
		///       solution before get all rpairs, we can move the
		///                if (cursize < pair_ranges.size()) {
		///       section to the beginning of the do/while loop.
		sol.refresh4newSels();
		if (solValidater(sol)) {
			std::size_t cursize = serial.size();
			if (cursize < pair_ranges.size()) {
#ifndef NDEBUG
				if (printth && serial.size() == 1) {
					std::cout << " loop for: "
						<< serial[0]->r1.r << ", "
						<< serial[0]->r2.r << std::endl;
				}
#endif
				serial.push_back(std::get<0>(pair_ranges[cursize]));
				continue;
			}
			result.push_back(sol);
		}

		/// next rpair for prev voltage
		while (!serial.empty()) {
			const auto rtidx = serial.size() - 1;
			++(serial[rtidx]);
			if (serial[rtidx] != std::get<1>(pair_ranges[rtidx])) {
				break;
			}
			serial.pop_back();
		}

		/// check if done
		if (serial.empty()) {
			break;
		}
	} while (true);
}


/// configuration
static constexpr std::size_t thread_num = 8;
bool validateSolution(const solution_t & sol)
{
	return sol.res_num <= 4 && sol.min_modeln >= 5;
}

static constexpr double VoltPrecise = 0.005;

/// entrance
int main()
{
	/// read file
	std::vector<rinfo_t> res_info;
	readResistorInfo(res_info, "resistor.txt");

	/// find all pairs satisfy voltage standards.
	std::vector< vpairs_t > pair_info;
	pair_info.push_back({{}, 1, VoltPrecise,
		[](double r1, double r2) { return (r1 + r2)/r2 * 0.8; },
		[](double v, double r1) { return (r1 * 0.8) / (v - 0.8); },
		[](double r1, double r2) { return (r1 + r2) * (0.8 * 0.8) / (r2 * r2); },
	});	/// error 1%: +-0.004V	1/4
	pair_info.push_back({{}, 1.8, VoltPrecise,
		[](double r1, double r2) { return (r1 + r2)/r2 * 0.8; },
		[](double v, double r1) { return (r1 * 0.8) / (v - 0.8); },
		[](double r1, double r2) { return (r1 + r2) * (0.8 * 0.8) / (r2 * r2); },
	});	/// error 1%: +-0.02V	5/4
	pair_info.push_back({{}, 1.35, VoltPrecise,
		[](double r1, double r2) { return (r1 + r2)/r2 * 0.8; },
		[](double v, double r1) { return (r1 * 0.8) / (v - 0.8); },
		[](double r1, double r2) { return (r1 + r2) * (0.8 * 0.8) / (r2 * r2); },
	});	/// error 1%: +-0.014V	7/8
	pair_info.push_back({{}, 3.3, VoltPrecise,
		[](double r1, double r2) { return (r1 + r2)/r2 * 0.8; },
		[](double v, double r1) { return (r1 * 0.8) / (v - 0.8); },
		[](double r1, double r2) { return (r1 + r2) * (0.8 * 0.8) / (r2 * r2); },
	});	/// error 1%: +-0.05V	25/8
#if 0
	pair_info.push_back({{}, 0.95, 0.01,
		[](double r1, double r2) { return r2/(r1 + r2) * 1.0; },
		[](double v, double r1) { return r1/(1.0/v - 1); },
		[](double r1, double r2) { return 1.0 * 1.0 / (r1 + r2); },
	});
	pair_info.push_back({{}, 1.4, 0.1,
		[](double r1, double r2) { return r2/(r1 + r2) * 1.8; },
		[](double v, double r1) { return r1/(1.8/v - 1); },
		[](double r1, double r2) { return 1.8 * 1.8 / (r1 + r2); },
	});
	pair_info.push_back({{}, 1.2, 0.1,
		[](double r1, double r2) { return r2/(r1 + r2) * 1.5; },
		[](double v, double r1) { return r1/(1.5/v - 1); },
		[](double r1, double r2) { return 1.5 * 1.5 / (r1 + r2); },
	});
	/// use same resistors of 0.95
	//pair_info.push_back({{}, 3.2, 0.1,
	//	[](double r1, double r2) { return r2/(r1 + r2) * 3.3; },
	//	[](double v, double r1) { return r1/(3.3/v - 1); },
	//	[](double r1, double r2) { return 3.3 * 3.3 / (r1 + r2); },
	//});
#endif
	{
		std::vector<std::thread> threads;
		for (auto & i : pair_info) {
			threads.push_back(std::thread([&i, &res_info](){
				findpairs(i, res_info);
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

		const auto starttime = std::chrono::steady_clock::now();
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
		auto stoptime = std::chrono::steady_clock::now();
		std::cout << "Printing took "
			<< std::chrono::duration_cast<std::chrono::microseconds>(stoptime - starttime).count()
			<< "us.\n";
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
	for (std::size_t i = 0; i < std::min((std::size_t)1000, result.size()); ++i) {
		result[i]->print();
	}
	std::cout << std::endl;

	return 0;
}
