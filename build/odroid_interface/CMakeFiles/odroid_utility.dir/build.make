# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/issa/AGGREGATOR_WS/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/issa/AGGREGATOR_WS/build

# Include any dependencies generated for this target.
include odroid_interface/CMakeFiles/odroid_utility.dir/depend.make

# Include the progress variables for this target.
include odroid_interface/CMakeFiles/odroid_utility.dir/progress.make

# Include the compile flags for this target's objects.
include odroid_interface/CMakeFiles/odroid_utility.dir/flags.make

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o: odroid_interface/CMakeFiles/odroid_utility.dir/flags.make
odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o: /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/GPIO.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/issa/AGGREGATOR_WS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o -c /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/GPIO.cpp

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.i"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/GPIO.cpp > CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.i

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.s"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/GPIO.cpp -o CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.s

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.requires:
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.requires

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.provides: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.requires
	$(MAKE) -f odroid_interface/CMakeFiles/odroid_utility.dir/build.make odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.provides.build
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.provides

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.provides.build: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o: odroid_interface/CMakeFiles/odroid_utility.dir/flags.make
odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o: /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/i2c.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/issa/AGGREGATOR_WS/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o -c /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/i2c.cpp

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.i"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/i2c.cpp > CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.i

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.s"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/issa/AGGREGATOR_WS/src/odroid_interface/include/odroid_interface/i2c.cpp -o CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.s

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.requires:
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.requires

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.provides: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.requires
	$(MAKE) -f odroid_interface/CMakeFiles/odroid_utility.dir/build.make odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.provides.build
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.provides

odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.provides.build: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o

# Object files for target odroid_utility
odroid_utility_OBJECTS = \
"CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o" \
"CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o"

# External object files for target odroid_utility
odroid_utility_EXTERNAL_OBJECTS =

/home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o
/home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o
/home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so: odroid_interface/CMakeFiles/odroid_utility.dir/build.make
/home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so: odroid_interface/CMakeFiles/odroid_utility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so"
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/odroid_utility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
odroid_interface/CMakeFiles/odroid_utility.dir/build: /home/issa/AGGREGATOR_WS/devel/lib/libodroid_utility.so
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/build

odroid_interface/CMakeFiles/odroid_utility.dir/requires: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/GPIO.cpp.o.requires
odroid_interface/CMakeFiles/odroid_utility.dir/requires: odroid_interface/CMakeFiles/odroid_utility.dir/include/odroid_interface/i2c.cpp.o.requires
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/requires

odroid_interface/CMakeFiles/odroid_utility.dir/clean:
	cd /home/issa/AGGREGATOR_WS/build/odroid_interface && $(CMAKE_COMMAND) -P CMakeFiles/odroid_utility.dir/cmake_clean.cmake
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/clean

odroid_interface/CMakeFiles/odroid_utility.dir/depend:
	cd /home/issa/AGGREGATOR_WS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/issa/AGGREGATOR_WS/src /home/issa/AGGREGATOR_WS/src/odroid_interface /home/issa/AGGREGATOR_WS/build /home/issa/AGGREGATOR_WS/build/odroid_interface /home/issa/AGGREGATOR_WS/build/odroid_interface/CMakeFiles/odroid_utility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : odroid_interface/CMakeFiles/odroid_utility.dir/depend

