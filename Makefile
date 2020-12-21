
CC = gcc
CFLAGS += -std=c11 -pedantic -Wall -Wextra -W -Wmissing-prototypes -Wstrict-prototypes -Wconversion -Wshadow -Wcast-qual -Wnested-externs -fsanitize=address -g
CFLAGS += `pkg-config --cflags gtk+-3.0`
LDFLAGS = `pkg-config --libs gtk+-3.0`
OBJECTS = main.o

all: gtk

main.o:

gtk: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o gtk $(LDFLAGS)

clean:
	rm -f *.o gtk

