#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1
/bin/echo "##" $(whoami) is compiling
icpx -fsycl lab/gaussian_elimination.cpp -o gaussian_elimination -O3 -Wall
if [ $? -eq 0 ]; then ./gaussian_elimination; fi
