#include <stdio.h>

#include <cxxopts.hpp>
#include <fstream>
#include <iostream>
#include <string>

#include "DQBF.hpp"
#include "algorithm.hpp"
#include "utils.hpp"

int main(int argc, char** argv) {
    cxxopts::Options options("2dqr", "2DQR");

    options.add_options()   ("i,input", "Input File", cxxopts::value<std::string>())
                            ("skolem", "Generate Skolem Function", cxxopts::value<bool>()->default_value("false"))
                            ("o,output", "Output Path", cxxopts::value<std::string>()->default_value("./"))
                            ("avr_bin", "Path to AVR binaries", cxxopts::value<std::string>()->default_value("../avr/build"))
                            ("h,help", "Print usage");

    auto result = options.parse(argc, argv);

    if (result.count("help")) {
        std::cout << options.help() << std::endl;
        exit(0);
    }

    if (!result.count("input")) {
        printf("No input file specified\n");
        exit(0);
    }
    std::string input_file = result["input"].as<std::string>();
    print_info(("file = " + input_file).c_str());
    DQBF p;
    if (split_string(input_file, ".").back() == "dqcir") {
        p.from_dqcir(input_file);
    } else if (split_string(input_file, ".").back() == "dqdimacs") {
        p.from_dqdimacs(input_file);
    } else {
        print_error("File extension must be either .dqdimacs or .dicir");
    }
    AVR_Wrapper avr(result["avr_bin"].as<std::string>());
    Algorithm Algorithm(p, avr);
    Algorithm.run(result["skolem"].as<bool>());
}
