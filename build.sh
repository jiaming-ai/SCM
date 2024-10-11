# echo "Configuring and building Thirdparty/DBoW2 ..."

# cd Thirdparty/DBoW2
# [ -d build ] && rm -rf build
# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/usr/bin/gcc-11 -DCMAKE_CXX_COMPILER=/usr/bin/g++-11
# make -j

# cd ../../g2o

# echo "Configuring and building Thirdparty/g2o ..."

# [ -d build ] && rm -rf build
# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/usr/bin/gcc-11 -DCMAKE_CXX_COMPILER=/usr/bin/g++-11
# make -j4

# cd ../../Sophus

# echo "Configuring and building Thirdparty/Sophus ..."

# [ -d build ] && rm -rf build
# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/usr/bin/gcc-11 -DCMAKE_CXX_COMPILER=/usr/bin/g++-11
# make -j4

# cd ../../../

# echo "Uncompress vocabulary ..."

# cd Vocabulary
# tar -xf ORBvoc.txt.tar.gz
# cd ..

# echo "Configuring and building SCM ..."

[ -d build ] && rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/usr/bin/gcc-11 -DCMAKE_CXX_COMPILER=/usr/bin/g++-11
make -j8 VERBOSE=1 >> build_log.txt 2>&1
