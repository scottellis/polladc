# Makefile for polladc

CC = gcc
CFLAGS = -Wall -O2

polladc: polladc.c
	$(CC) $(CFLAGS) polladc.c -o polladc

clean:
	rm -f polladc

