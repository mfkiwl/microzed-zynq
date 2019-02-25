#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <set>
#include <thread>
#include <algorithm>

typedef struct rinfo {
	std::string ostr;
	double v;
} rinfo_t;

typedef struct rpair {
	std::size_t s1;
	std::size_t s2;
	double power;
} rpair_t;


void checkpairs(std::vector<rpair_t> & dst, const std::vector<rinfo_t> & src, double base_v, double off_v)
{
	auto totalN = src.size();
	for (std::size_t i = 0; i < totalN; ++i) {
		for (std::size_t j = 0; j < totalN; ++j) {
			double tmp = (src[i].v + src[j].v) / src[j].v * 0.8;
			if (base_v - off_v <= tmp && tmp <= base_v + off_v) {
				//std::cout << "voltage is " << tmp << std::endl;
				dst.push_back({i, j, (tmp * tmp / (src[i].v + src[j].v))});
			}
		}
	}
}

void printpairs(const std::vector<rpair_t> & dst)
{
	for (auto & i : dst) {
		std::cout << i.s1 << "; " << i.s2 << std::endl;
	}
}

void processCombine(
	std::vector<std::vector<std::size_t>> & ret,
	const std::vector<std::size_t> & serial,
	const std::vector< std::vector<rpair_t> * > & pair_info,
	const std::vector<rinfo_t> & res_info,
	const std::size_t limit)
{
	std::set<std::size_t> s;
	for (std::size_t i = 0; i < serial.size(); ++i) {
		const rpair_t & rp = (*pair_info[i])[serial[i]];
		s.insert(rp.s1);
		s.insert(rp.s2);
	}

	if (s.size() > limit) {
		return;
	}

	ret.push_back(serial);
}

void multithreadprocess(
	std::vector<std::vector<std::size_t>> & result,
	const std::vector< rpair_t> & pair_ranges,
	const std::vector< std::vector<rpair_t> * > & pair_info,
	const std::vector<rinfo_t> & res_info
     )
{
	std::vector<std::size_t> serial;
	do {
		std::size_t cursize = serial.size();

		if (cursize < pair_ranges.size()) {
			serial.push_back(pair_ranges[cursize].s1);
		}
		else {
			if (0) {
				std::cout << "loop: ";
				for (auto i : serial) {
					std::cout << i << " ";
				}
				std::cout << std::endl;
			}
			processCombine(result, serial, pair_info, res_info, 5);

			while (*serial.rbegin() == pair_ranges[serial.size()-1].s2) {
				serial.pop_back();
			}

			if (serial.size() == 1) { std::cout << "loop: " << serial[0] << std::endl; }

			if (serial.empty()) {
				break;
			}
			else {
				++(*serial.rbegin());
			}
		}
	} while (true);
}

int main()
{
	std::fstream s("resistor.txt", s.in);

	int modelN = 0;

	std::vector<rinfo_t> res_info;

	for (std::string line; std::getline(s, line); ) {
		res_info.push_back({"",0});
		rinfo_t & cinfo = res_info[modelN];

		cinfo.ostr = line;
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
		cinfo.v = tmp;

		++modelN;
	}

	std::vector<rpair_t> res_pairs1v;
	checkpairs(res_pairs1v, res_info, 1, 0.0001);
	std::cout << "fulfil 1V(+-0.01V) pairs " << res_pairs1v.size() << std::endl;

	std::vector<rpair_t> res_pairs1v8;
	checkpairs(res_pairs1v8, res_info, 1.8, 0.001);
	std::cout << "fulfil 1V8(+-0.01V) pairs " << res_pairs1v8.size() << std::endl;
	//printpairs(res_pairs1v8);

	std::vector<rpair_t> res_pairs1v5;
	checkpairs(res_pairs1v5, res_info, 1.5, 0.001);
	std::cout << "fulfil 1V5(+-0.01V) pairs " << res_pairs1v5.size() << std::endl;

	std::vector<rpair_t> res_pairs3v3;
	checkpairs(res_pairs3v3, res_info, 3.3, 0.001);
	std::cout << "fulfil 1V5(+-0.01V) pairs " << res_pairs3v3.size() << std::endl;

	std::vector< std::vector<rpair_t> * > pair_info = { &res_pairs1v, &res_pairs1v8, &res_pairs1v5, &res_pairs3v3 };
	std::vector< std::vector<std::vector<std::size_t>> > v_result;
	std::vector< std::vector< rpair_t> > v_pair_ranges;

	// split for multi thread
	constexpr std::size_t thread_num = 4;
	std::size_t firstN = pair_info[0]->size();
	std::size_t startN = 0;
	std::size_t remainthread = thread_num;
	for (std::size_t i = 0; i < thread_num; ++i) {
		v_result.push_back({});
		v_pair_ranges.push_back({});

		const std::size_t this_num = (firstN + remainthread - 1) / remainthread;
		v_pair_ranges[i].push_back({0,0});
		v_pair_ranges[i][0].s1 = startN;
		v_pair_ranges[i][0].s2 = startN + this_num - 1;
		startN += this_num;
		firstN -= this_num;
		--remainthread;
		for (std::size_t j = 1; j < pair_info.size(); ++j) {
			v_pair_ranges[i].push_back({0, pair_info[j]->size()-1});
		}
	}

	for (auto & i : v_pair_ranges) {
		std::cout << "--- ";
		for (auto & j : i) {
			std::cout << "(" << j.s1 << "," << j.s2 << ");";
		}
		std::cout << std::endl;
	}

	std::vector<std::thread> threads;
	for (std::size_t i = 0; i < thread_num; ++i) {
		threads.push_back(std::thread(
			multithreadprocess,
			std::ref(v_result[i]),
			std::ref(v_pair_ranges[i]),
			std::ref(pair_info),
			std::ref(res_info)
		));
	}

	for (auto & i : threads) {
		if (i.joinable()) {
			i.join();
		}
	}

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
	return 0;
}
