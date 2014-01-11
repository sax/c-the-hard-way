CC=gcc
CFLAGS=-Wall -g

# The first definition gets run as the default when you
# type `make` with no arguments, which is why we have `all`
# listed first.
all: directories source

directories:
	mkdir -p build

source:
	$(CC) $(CFLAGS) src/ex5.c -o build/ex5
	chmod 0744 build/*

clean:
	rm -rf build

