# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\bruec\cppp\02_memory\02_memory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bruec\cppp\02_memory\02_memory\build

# Include any dependencies generated for this target.
include CMakeFiles/common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/common.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/common.dir/flags.make

CMakeFiles/common.dir/src/food.cpp.obj: CMakeFiles/common.dir/flags.make
CMakeFiles/common.dir/src/food.cpp.obj: CMakeFiles/common.dir/includes_CXX.rsp
CMakeFiles/common.dir/src/food.cpp.obj: ../src/food.cpp
CMakeFiles/common.dir/src/food.cpp.obj: CMakeFiles/common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/common.dir/src/food.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/common.dir/src/food.cpp.obj -MF CMakeFiles\common.dir\src\food.cpp.obj.d -o CMakeFiles\common.dir\src\food.cpp.obj -c C:\Users\bruec\cppp\02_memory\02_memory\src\food.cpp

CMakeFiles/common.dir/src/food.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/src/food.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bruec\cppp\02_memory\02_memory\src\food.cpp > CMakeFiles\common.dir\src\food.cpp.i

CMakeFiles/common.dir/src/food.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/src/food.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bruec\cppp\02_memory\02_memory\src\food.cpp -o CMakeFiles\common.dir\src\food.cpp.s

CMakeFiles/common.dir/src/map.cpp.obj: CMakeFiles/common.dir/flags.make
CMakeFiles/common.dir/src/map.cpp.obj: CMakeFiles/common.dir/includes_CXX.rsp
CMakeFiles/common.dir/src/map.cpp.obj: ../src/map.cpp
CMakeFiles/common.dir/src/map.cpp.obj: CMakeFiles/common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/common.dir/src/map.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/common.dir/src/map.cpp.obj -MF CMakeFiles\common.dir\src\map.cpp.obj.d -o CMakeFiles\common.dir\src\map.cpp.obj -c C:\Users\bruec\cppp\02_memory\02_memory\src\map.cpp

CMakeFiles/common.dir/src/map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/src/map.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bruec\cppp\02_memory\02_memory\src\map.cpp > CMakeFiles\common.dir\src\map.cpp.i

CMakeFiles/common.dir/src/map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/src/map.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bruec\cppp\02_memory\02_memory\src\map.cpp -o CMakeFiles\common.dir\src\map.cpp.s

common: CMakeFiles/common.dir/src/food.cpp.obj
common: CMakeFiles/common.dir/src/map.cpp.obj
common: CMakeFiles/common.dir/build.make
.PHONY : common

# Rule to build all files generated by this target.
CMakeFiles/common.dir/build: common
.PHONY : CMakeFiles/common.dir/build

CMakeFiles/common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\common.dir\cmake_clean.cmake
.PHONY : CMakeFiles/common.dir/clean

CMakeFiles/common.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bruec\cppp\02_memory\02_memory C:\Users\bruec\cppp\02_memory\02_memory C:\Users\bruec\cppp\02_memory\02_memory\build C:\Users\bruec\cppp\02_memory\02_memory\build C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles\common.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/common.dir/depend

