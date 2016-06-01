# Makefile for polladc

polladc: polladc.c
	$(CC) $(CFLAGS) polladc.c -o polladc

clean:
	rm -f polladc

