# Make file for shakeconsole
# James Skon, Kenyon Colleg, 2020

CFLAGS= -std=c++14

all: shakeconsole

textindex.o: textindex.cpp textindex.h
	g++ $(CFLAGS) -c textindex.cpp

shakeconsole.o: shakeconsole.cpp textindex.h
	g++ $(CFLAGS) -c shakeconsole.cpp

shakeconsole: textindex.o shakeconsole.o
	g++ $(CFLAGS) textindex.o shakeconsole.o -o shakeconsole

clean:
	rm -f *.o  shakeconsole
