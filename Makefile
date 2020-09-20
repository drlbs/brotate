# This sample Makefile allows you to make an OpenGL application
#   whose source is exactly one .c or .cc file.
#
#
# To use this Makefile, you type:
#
#        make xxxx
#                  
# where
#       xxxx.c is the name of the file you wish to compile 
#       
# A binary named xxxx will be produced

CC = gcc
LIBDIRS = -L/usr/lib64
INCDIRS = -I/usr/include
LDLIBS =  -lglut -lGL -lGLU -lX11 -lm

brot: brot.o
	$(CC)  -o brot brot.o $(INCDIRS) $(LIBDIRS) $(LDLIBS)

brot.o : brot.c
	$(CC)  -c brot.c $(INCDIRS)

