#include "avr_wrapper.hpp"

#include <boost/process.hpp>
#include <filesystem>
#include <fstream>

#include "utils.hpp"

AVR_Wrapper::AVR_Wrapper(std::string bin_path) {
    this->bin_path = bin_path;
    if (!std::filesystem::exists(std::filesystem::path(bin_path.c_str()) / "avr")) {
        print_error("avr not found\nPlease make sure that the path to the avr binary is correct with --avr_bin <path> (Default: ../avr/build)");
    }
    if (!std::filesystem::exists(std::filesystem::path(bin_path.c_str()) / "bin/dpa")) {
        print_error("bin/dpa not found\nPlease make sure that the path to the avr binary is correct with --avr_bin <path> (Default: ../avr/build)");
    }
    if (!std::filesystem::exists(std::filesystem::path(bin_path.c_str()) / "bin/reach")) {
        print_error("bin/reach not found\nPlease make sure that the path to the avr binary is correct with --avr_bin <path> (Default: ../avr/build)");
    }
    if (!std::filesystem::exists(std::filesystem::path(bin_path.c_str()) / "bin/vwn")) {
        print_error("bin/vwn not found\nPlease make sure that the path to the avr binary is correct with --avr_bin <path> (Default: ../avr/build)");
    }
}

AVR_result AVR_Wrapper::run_avr(std::string input) {
    std::string command = (std::filesystem::path(bin_path.c_str()) / "avr").string() + " " + input + " - . test output " + (std::filesystem::path(bin_path.c_str()) / "bin").string() + " yosys clk 3600 64000 False True 2 False 0 \"-\" 0 - True sa+uf False 0 0 2 0 - True True 0000000 False False False 1000 True";
    // boost::process::system("timeout 600 python3 ./avr.py -b " + bin_path + " --smt2 --witness --aig " + input);
    print_info("Running AVR");
    boost::process::system("timeout 600 " + command);
    std::ifstream result("./output/work_test/result.pr");
    std::string line = "";
    getline(result, line);
    if (line == "") {
        print_info("AVR Timeout");
        return AVR_result::TIMEOUT;
    } else if (line == "avr-v") {
        print_info("AVR UNSAT");
        return AVR_result::UNSAT;
    } else if (line == "avr-h") {
        print_info("AVR SAT");
        return AVR_result::SAT;
    }
    print_info("AVR UNKNOWN");
    return AVR_result::UNKNOWN;
}