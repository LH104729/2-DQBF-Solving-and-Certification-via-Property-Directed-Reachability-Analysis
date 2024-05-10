#ifndef AVR_WRAPPER_HPP
#define AVR_WRAPPER_HPP

#include <string>

enum AVR_result {
    SAT,
    UNSAT,
    TIMEOUT,
    UNKNOWN
};

class AVR_Wrapper {
    private:
        std::string bin_path;
    public:
        AVR_Wrapper(std::string bin_path);
        AVR_result run_avr(std::string input);
};

#endif