
CC=gcc
CFLAGS=-I.
DEPS = hellomake.h


default: com

com: com.o
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)



%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)


clean:
	rm *.o com
