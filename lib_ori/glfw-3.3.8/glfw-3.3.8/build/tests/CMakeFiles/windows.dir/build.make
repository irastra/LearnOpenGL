# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "C:\Program Files\CMake_3.14\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake_3.14\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build

# Include any dependencies generated for this target.
include tests/CMakeFiles/windows.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/windows.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/windows.dir/flags.make

tests/CMakeFiles/windows.dir/windows.c.obj: tests/CMakeFiles/windows.dir/flags.make
tests/CMakeFiles/windows.dir/windows.c.obj: tests/CMakeFiles/windows.dir/includes_C.rsp
tests/CMakeFiles/windows.dir/windows.c.obj: ../tests/windows.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/windows.dir/windows.c.obj"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\windows.dir\windows.c.obj   -c C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\tests\windows.c

tests/CMakeFiles/windows.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/windows.c.i"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\tests\windows.c > CMakeFiles\windows.dir\windows.c.i

tests/CMakeFiles/windows.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/windows.c.s"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\tests\windows.c -o CMakeFiles\windows.dir\windows.c.s

tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: tests/CMakeFiles/windows.dir/flags.make
tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: tests/CMakeFiles/windows.dir/includes_C.rsp
tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: ../deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\windows.dir\__\deps\getopt.c.obj   -c C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\getopt.c

tests/CMakeFiles/windows.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/getopt.c.i"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\getopt.c > CMakeFiles\windows.dir\__\deps\getopt.c.i

tests/CMakeFiles/windows.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/getopt.c.s"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\getopt.c -o CMakeFiles\windows.dir\__\deps\getopt.c.s

tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: tests/CMakeFiles/windows.dir/flags.make
tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: tests/CMakeFiles/windows.dir/includes_C.rsp
tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: ../deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\windows.dir\__\deps\glad_gl.c.obj   -c C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\glad_gl.c

tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\glad_gl.c > CMakeFiles\windows.dir\__\deps\glad_gl.c.i

tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\deps\glad_gl.c -o CMakeFiles\windows.dir\__\deps\glad_gl.c.s

# Object files for target windows
windows_OBJECTS = \
"CMakeFiles/windows.dir/windows.c.obj" \
"CMakeFiles/windows.dir/__/deps/getopt.c.obj" \
"CMakeFiles/windows.dir/__/deps/glad_gl.c.obj"

# External object files for target windows
windows_EXTERNAL_OBJECTS =

tests/windows.exe: tests/CMakeFiles/windows.dir/windows.c.obj
tests/windows.exe: tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj
tests/windows.exe: tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj
tests/windows.exe: tests/CMakeFiles/windows.dir/build.make
tests/windows.exe: src/libglfw3.a
tests/windows.exe: tests/CMakeFiles/windows.dir/linklibs.rsp
tests/windows.exe: tests/CMakeFiles/windows.dir/objects1.rsp
tests/windows.exe: tests/CMakeFiles/windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable windows.exe"
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\windows.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/windows.dir/build: tests/windows.exe

.PHONY : tests/CMakeFiles/windows.dir/build

tests/CMakeFiles/windows.dir/clean:
	cd /d C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests && $(CMAKE_COMMAND) -P CMakeFiles\windows.dir\cmake_clean.cmake
.PHONY : tests/CMakeFiles/windows.dir/clean

tests/CMakeFiles/windows.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8 C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\tests C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests C:\Users\zhangxu01\Documents\git\OpenGL\lib_ori\glfw-3.3.8\glfw-3.3.8\build\tests\CMakeFiles\windows.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/windows.dir/depend

