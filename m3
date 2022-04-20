OBJS=main.o tool1.o tool2.o
CC=gcc
CFLAGS+=-c -Wall -g


mytool:$(OBJS)
	$(CC) $^ -o $@
# target mytool  depend main.o  tool1.o tool2.o

main.o:main.c
	$(CC) $^ $(CFLAGS) -o $@
tool1.o:tool1.c
	$(CC) $^ $(CFLAGS) -o $@
tool2.o:tool2.c
	$(CC) $^ $(CFLAGS) -o $@

clean:
	$(RM) *.o mytool -r



