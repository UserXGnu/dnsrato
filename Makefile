MAIN=main.c
LIB=dnsrato.h dnsrato.c
LIBOBJ=dnsrato.o
EXEC=main
LFLAG=-c
FLAG=-o
CC=gcc
TRASH=*.*.gch
CLEAN=rm -f
INSTALL_DEST=/usr/bin/dnsrato
FILE=rato.txt
FILE_DEST=/usr/share/dnsrato/
INSTALL_MK_DIR=mkdir
INSTALL_CMD=cp
UNINSTALL_CMD = rm -rf

default:all

libs:clean
	$(CC) $(LIB) $(LFLAG)

all:libs
	$(CC) $(LIBOBJ) $(MAIN) $(FLAG) $(EXEC)

install:
	$(INSTALL_CMD) $(EXEC) $(INSTALL_DEST)  
	$(INSTALL_MK_DIR) $(FILE_DEST)
	$(INSTALL_CMD) $(FILE) $(FILE_DEST)

uninstall:
	$(UNINSTALL_CMD) $(INSTALL_DEST)
	$(UNINSTALL_CMD) $(FILE_DEST)
	
clean:
	$(CLEAN) $(LIBOBJ) $(EXEC) $(TRASH)
	
