OBJS=main.o tool1.o tool2.o
CC=gcc
CFLAGS+=-c -Wall -g


mytool:$(OBJS)
	$(CC) $(OBJS) -o mytool
# target mytool  depend main.o  tool1.o tool2.o

main.o:main.c
	$(CC) main.c $(CFLAGS) -o main.o
tool1.o:tool1.c
	$(CC) tool1.c $(CFLAGS) -o tool1.o
tool2.o:tool2.c
	$(CC) tool2.c $(CFLAGS) -o tool2.o

clean:
	$(RM) *.o mytool -r



