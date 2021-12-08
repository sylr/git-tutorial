LIBFILES		:= math.c vector.c
LIBOBJECTS		:= $(patsubst %.c,%.o,$(LIBFILES))
LIBNAMES		:= vec math
LIBFILES		:= $(patsubst %,lib%.a,$(LIBNAMES))
LIBSOFILES		:= $(patsubst %,lib%.so,$(LIBNAMES))
MAINFILES		:= add.c
BINARIES		:= $(patsubst %.c,%,$(MAINFILES))
COMPILER_LIBS	:= $(foreach lib,$(LIBNAMES),$(shell echo "-l$(lib) "))

all: $(BINARIES)

%.o: %.c
	gcc -Wall -c $<

$(LIBFILES): $(LIBOBJECTS)
	ar -cq $@ $<

$(LIBSOFILES): $(LIBOBJECTS)
	gcc -shared -o $@ $^

$(BINARIES): $(MAINFILES) | $(LIBFILES) $(LIBSOFILES)
	gcc $(COMPILER_LIBS) -L. $< -o $@

clean:
	@git clean -fdx

.PHONY: all clean
