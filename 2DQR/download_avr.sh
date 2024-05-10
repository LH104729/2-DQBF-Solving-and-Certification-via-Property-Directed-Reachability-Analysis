!/bin/bash
wget https://github.com/aman-goel/avr/archive/refs/tags/v2.1.zip
unzip v2.1.zip
cd avr-2.1
chmod -R u+x .
# Temporary fix for issue#14 https://github.com/aman-goel/avr/issues/14
# This replaces line 40 with the correct path to libbtor2parser.a
sed -i '40s/.*/  BT_LIB += $(BT_DIR)\/deps\/btor2tools\/build\/lib\/libbtor2parser.a/' ./src/reach/Makefile

# git clone https://github.com/aman-goel/avr
cd avr
chmod -R u+x .
./build.sh