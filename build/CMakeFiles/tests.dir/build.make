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
include CMakeFiles/tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tests.dir/flags.make

CMakeFiles/tests.dir/src/food.test.cpp.obj: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/src/food.test.cpp.obj: CMakeFiles/tests.dir/includes_CXX.rsp
CMakeFiles/tests.dir/src/food.test.cpp.obj: ../src/food.test.cpp
CMakeFiles/tests.dir/src/food.test.cpp.obj: CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tests.dir/src/food.test.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tests.dir/src/food.test.cpp.obj -MF CMakeFiles\tests.dir\src\food.test.cpp.obj.d -o CMakeFiles\tests.dir\src\food.test.cpp.obj -c C:\Users\bruec\cppp\02_memory\02_memory\src\food.test.cpp

CMakeFiles/tests.dir/src/food.test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/src/food.test.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bruec\cppp\02_memory\02_memory\src\food.test.cpp > CMakeFiles\tests.dir\src\food.test.cpp.i

CMakeFiles/tests.dir/src/food.test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/src/food.test.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bruec\cppp\02_memory\02_memory\src\food.test.cpp -o CMakeFiles\tests.dir\src\food.test.cpp.s

CMakeFiles/tests.dir/src/map.test.cpp.obj: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/src/map.test.cpp.obj: CMakeFiles/tests.dir/includes_CXX.rsp
CMakeFiles/tests.dir/src/map.test.cpp.obj: ../src/map.test.cpp
CMakeFiles/tests.dir/src/map.test.cpp.obj: CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tests.dir/src/map.test.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tests.dir/src/map.test.cpp.obj -MF CMakeFiles\tests.dir\src\map.test.cpp.obj.d -o CMakeFiles\tests.dir\src\map.test.cpp.obj -c C:\Users\bruec\cppp\02_memory\02_memory\src\map.test.cpp

CMakeFiles/tests.dir/src/map.test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/src/map.test.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bruec\cppp\02_memory\02_memory\src\map.test.cpp > CMakeFiles\tests.dir\src\map.test.cpp.i

CMakeFiles/tests.dir/src/map.test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/src/map.test.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bruec\cppp\02_memory\02_memory\src\map.test.cpp -o CMakeFiles\tests.dir\src\map.test.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/src/food.test.cpp.obj" \
"CMakeFiles/tests.dir/src/map.test.cpp.obj"

# External object files for target tests
tests_EXTERNAL_OBJECTS = \
"C:/Users/bruec/cppp/02_memory/02_memory/build/CMakeFiles/common.dir/src/food.cpp.obj" \
"C:/Users/bruec/cppp/02_memory/02_memory/build/CMakeFiles/common.dir/src/map.cpp.obj"

tests.exe: CMakeFiles/tests.dir/src/food.test.cpp.obj
tests.exe: CMakeFiles/tests.dir/src/map.test.cpp.obj
tests.exe: CMakeFiles/common.dir/src/food.cpp.obj
tests.exe: CMakeFiles/common.dir/src/map.cpp.obj
tests.exe: CMakeFiles/tests.dir/build.make
tests.exe: _deps/catch2-build/src/libCatch2Main.a
tests.exe: _deps/catch2-build/src/libCatch2.a
tests.exe: CMakeFiles/tests.dir/linklibs.rsp
tests.exe: CMakeFiles/tests.dir/objects1.rsp
tests.exe: CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tests.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tests.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tests.dir/build: tests.exe
.PHONY : CMakeFiles/tests.dir/build

CMakeFiles/tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\tests.dir\cmake_clean.cmake
.PHONY : CMakeFiles/tests.dir/clean

CMakeFiles/tests.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bruec\cppp\02_memory\02_memory C:\Users\bruec\cppp\02_memory\02_memory C:\Users\bruec\cppp\02_memory\02_memory\build C:\Users\bruec\cppp\02_memory\02_memory\build C:\Users\bruec\cppp\02_memory\02_memory\build\CMakeFiles\tests.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests.dir/depend
