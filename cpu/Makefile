CC = gcc
CFLAGS = -O2 -Wall
LFLAGS = 

all:	rapl

rapl:	rapl.o
	$(CC) $(LFLAGS) -o rapl rapl.o -lpapi -fopenmp

rapl.o:	rapl.c
	$(CC) $(CFLAGS) -c rapl.c

clean:	
	rm -f *~ *.o rapl
