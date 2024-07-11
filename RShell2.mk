#RShell2.mk
#to use it, do: make -f RShell2.mk

CC=gcc

all: RShellClient2 RShellServer2

RShellClient2: RShellClient2.o
	$(CC) -lcrypto -w -o RShellClient2 RShellClient2.o

RShellClient2.o: RShellClient2.c
	$(CC) -c -std=gnu89 -w RShellClient2.c

RShellServer2: RShellServer2.o
	$(CC) -lcrypto -w -o RShellServer2 RShellServer2.o

RShellServer2.o: RShellServer2.c 
	$(CC) -c -std=gnu89 -w RShellServer2.c