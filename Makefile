CC=gcc

LD_OPTS=-ljack 

CC_OPTS=-O3 -Wall

EXECS=jack_trauma 

all:	$(EXECS) $(MODULES)

jack_trauma: jack_trauma.c
	$(CC) $(LD_OPTS) $@.c -o $@

clean:
	rm -f $(EXECS)

