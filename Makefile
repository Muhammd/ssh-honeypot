CC=clang
CFLAGS=-Wall -static-libgcc
LIBS=-lssh -ljson-c

ssh-honeypot:
	$(CC) $(CFLAGS) -o bin/ssh-honeypot src/ssh-honeypot.c $(LIBS)

clean:
	rm -f *~ src/*~ bin/ssh-honeypot src/*.o
