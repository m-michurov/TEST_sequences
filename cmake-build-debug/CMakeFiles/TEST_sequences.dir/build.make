# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = H:\NSUProgLabs\TEST_sequences

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = H:\NSUProgLabs\TEST_sequences\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TEST_sequences.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TEST_sequences.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TEST_sequences.dir/flags.make

CMakeFiles/TEST_sequences.dir/main.c.obj: CMakeFiles/TEST_sequences.dir/flags.make
CMakeFiles/TEST_sequences.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\TEST_sequences\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TEST_sequences.dir/main.c.obj"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\TEST_sequences.dir\main.c.obj   -c H:\NSUProgLabs\TEST_sequences\main.c

CMakeFiles/TEST_sequences.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TEST_sequences.dir/main.c.i"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\TEST_sequences\main.c > CMakeFiles\TEST_sequences.dir\main.c.i

CMakeFiles/TEST_sequences.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TEST_sequences.dir/main.c.s"
	C:\tools\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\TEST_sequences\main.c -o CMakeFiles\TEST_sequences.dir\main.c.s

# Object files for target TEST_sequences
TEST_sequences_OBJECTS = \
"CMakeFiles/TEST_sequences.dir/main.c.obj"

# External object files for target TEST_sequences
TEST_sequences_EXTERNAL_OBJECTS =

TEST_sequences.exe: CMakeFiles/TEST_sequences.dir/main.c.obj
TEST_sequences.exe: CMakeFiles/TEST_sequences.dir/build.make
TEST_sequences.exe: CMakeFiles/TEST_sequences.dir/linklibs.rsp
TEST_sequences.exe: CMakeFiles/TEST_sequences.dir/objects1.rsp
TEST_sequences.exe: CMakeFiles/TEST_sequences.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=H:\NSUProgLabs\TEST_sequences\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TEST_sequences.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\TEST_sequences.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TEST_sequences.dir/build: TEST_sequences.exe

.PHONY : CMakeFiles/TEST_sequences.dir/build

CMakeFiles/TEST_sequences.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\TEST_sequences.dir\cmake_clean.cmake
.PHONY : CMakeFiles/TEST_sequences.dir/clean

CMakeFiles/TEST_sequences.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" H:\NSUProgLabs\TEST_sequences H:\NSUProgLabs\TEST_sequences H:\NSUProgLabs\TEST_sequences\cmake-build-debug H:\NSUProgLabs\TEST_sequences\cmake-build-debug H:\NSUProgLabs\TEST_sequences\cmake-build-debug\CMakeFiles\TEST_sequences.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TEST_sequences.dir/depend

