# Building the Tools
- Compile [AVR](https://github.com/aman-goel/avr.git) and have the following structure.
```
avr
└── build
    ├── avr
    └── bin
        ├── dpa
        ├── reach
        └── vwn
```
- The pre-compiled Vampire executable is under the directory "bin/".

# Random FO2 with Prefix ∀ ∧ ∀∃ Benchmarks

All the test cases is under the directory "benchmarks/", where in each "3cnf-k-l-m-n" subfolder, "test.smt2" and "test.vmt" are the reachability problem encoded from the FO2 formula in "test.fo2" in SMTLIB2 and VMT format, respectively.

# Run the Experiments

```python run_exp.py```