# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raven/Documents/rpc_c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raven/Documents/rpc_c++

# Include any dependencies generated for this target.
include CMakeFiles/rpc_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rpc_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rpc_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rpc_server.dir/flags.make

CMakeFiles/rpc_server.dir/main.cpp.o: CMakeFiles/rpc_server.dir/flags.make
CMakeFiles/rpc_server.dir/main.cpp.o: main.cpp
CMakeFiles/rpc_server.dir/main.cpp.o: CMakeFiles/rpc_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Documents/rpc_c++/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rpc_server.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rpc_server.dir/main.cpp.o -MF CMakeFiles/rpc_server.dir/main.cpp.o.d -o CMakeFiles/rpc_server.dir/main.cpp.o -c /home/raven/Documents/rpc_c++/main.cpp

CMakeFiles/rpc_server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rpc_server.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Documents/rpc_c++/main.cpp > CMakeFiles/rpc_server.dir/main.cpp.i

CMakeFiles/rpc_server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rpc_server.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Documents/rpc_c++/main.cpp -o CMakeFiles/rpc_server.dir/main.cpp.s

# Object files for target rpc_server
rpc_server_OBJECTS = \
"CMakeFiles/rpc_server.dir/main.cpp.o"

# External object files for target rpc_server
rpc_server_EXTERNAL_OBJECTS =

rpc_server: CMakeFiles/rpc_server.dir/main.cpp.o
rpc_server: CMakeFiles/rpc_server.dir/build.make
rpc_server: CMakeFiles/rpc_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/raven/Documents/rpc_c++/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rpc_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpc_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rpc_server.dir/build: rpc_server
.PHONY : CMakeFiles/rpc_server.dir/build

CMakeFiles/rpc_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rpc_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rpc_server.dir/clean

CMakeFiles/rpc_server.dir/depend:
	cd /home/raven/Documents/rpc_c++ && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raven/Documents/rpc_c++ /home/raven/Documents/rpc_c++ /home/raven/Documents/rpc_c++ /home/raven/Documents/rpc_c++ /home/raven/Documents/rpc_c++/CMakeFiles/rpc_server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rpc_server.dir/depend
