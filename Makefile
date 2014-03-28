CC = gcc
CFLAGS = -O3 -ggdb -Wall -Wextra

all: fast-list

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

fast-list: fast-list.o
	gcc $(CFLAGS) $^ -o $@

clean:
	rm *.o fast-list