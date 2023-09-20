#!/bin/bash

ULA_MAIN_MODULE="ula.sv"
AND_8_BITS_TESTBENCH="and_8_bits_testbench.sv"


echo "Running and 8 bits testbench."

PROJECT_NAME_AND_8_BITS="and_8_bits"

AND_8_BITS_TESTBENCH="and_8_bits_testbench.sv"

iverilog -o $PROJECT_NAME_AND_8_BITS $ULA_MAIN_MODULE $AND_8_BITS_TESTBENCH

vvp $PROJECT_NAME_AND_8_BITS

echo "Runned and 8 bits testbench."

echo "Success! Script has finished running."
