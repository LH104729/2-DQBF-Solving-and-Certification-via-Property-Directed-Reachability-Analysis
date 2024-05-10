# Building 2DQR
- Compile [AVR](https://github.com/aman-goel/avr.git) and have the following structure.
```
avr-2.1
└── build
    ├── avr
    └── bin
        ├── dpa
        ├── reach
        └── vwn

```
- Download and install [vcpkg](https://github.com/Microsoft/vcpkg)
- Run ``${vcpkg root}/vcpkg install boost-process cxxopts z3``
- Go to ``./build``
- Run ``cmake -DCMAKE_TOOLCHAIN_FILE=${vcpkg root}/scripts/buildsystems/vcpkg.cmake .. ; make``

# Usage

```./2dqr --input <input file> [--skolem] [--output <output path>] [--avr <path to avr>] [--help]```