#Usage instructions
*1.) Install MinGW64
*2.) Install CMAKE
*3.) In libseh subfolder Run: make -f Makefile
*4.) May add cmake.exe to path as cmake
*5.) Set environment variable: CMAKE_C_COMPILER = gcc
*6.) Set environment variable: CMAKE_CXX_COMPILER = g++
*7.) Run: cmake as follows from within this directory: cmake -D"CMAKE_MAKE_PROGRAM:PATH=<path/to/mingw64/bin/make.exe>" -G "MinGW Makefiles"
*8.) In libmysql/CMakeFiles/mysqlclient.dir/build.make: Might have to rename some "rm" commands to "del" commands and may need to invert path forward slashes to backward slashes
*9.) Run: make