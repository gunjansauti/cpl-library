#!/bin/bash
echo $CPL_THIRD_PARTY
cd $CPL_THIRD_PARTY/json-fortran
cd build &> /dev/null
if [ $? = 0 ]; then
    echo "Cleaning json-fortran project..."
    make clean
    cd ..
fi
rm -rf build &> /dev/null
mkdir build
cd build
cmake ../
make
cp lib/* $CPL_THIRD_PARTY/lib
cp include/* $CPL_THIRD_PARTY/include
