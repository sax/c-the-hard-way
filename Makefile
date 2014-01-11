CC=cc
CFLAGS=-Wall -g

# The first definition gets run as the default when you
# type `make` with no arguments, which is why we have `all`
# listed first.
all: directories source

directories:
	mkdir -p build

source: ex4 ex5 ex6

ex4: directories
	$(CC) $(CFLAGS) src/ex4.c -o build/ex4
	chmod 0744 build/ex4

ex5: directories
	$(CC) $(CFLAGS) src/ex5.c -o build/ex5
	chmod 0744 build/ex5

ex6: directories
	$(CC) $(CFLAGS) src/ex6.c -o build/ex6
	chmod 0744 build/ex6

clean:
	rm -rf build

