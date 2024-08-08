SOURCE_FILES := $(wildcard examples/*.cbl)
EXECUTABLES := $(SOURCE_FILES:examples/%.cbl=examples_exec/%)
WRAPPER_OBJ := raylib_wrapper.o

examples: $(EXECUTABLES)

examples_exec/%: examples/%.cbl $(WRAPPER_OBJ)
	cobc -x -free -o $@ $< $(WRAPPER_OBJ) -lraylib

$(WRAPPER_OBJ): raylib_wrapper.c
	gcc -c raylib_wrapper.c -o $(WRAPPER_OBJ)

clean:
	rm -f $(WRAPPER_OBJ) $(EXECUTABLES)
