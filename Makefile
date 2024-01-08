
CC = gcc
CFLAGS += -std=c11 -pedantic -Wall -Wextra -W -Wmissing-prototypes -Wstrict-prototypes -Wconversion -Wshadow -Wcast-qual -Wnested-externs
CFLAGS += `pkg-config --cflags gtk4`
LDFLAGS = `pkg-config --libs gtk4`

all: demo

demo:
	$(CC) $(CFLAGS) demo.c -o demo $(LDFLAGS)	

clean:
	rm -f demo

