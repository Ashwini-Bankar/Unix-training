all:unix
unix:msys
msys:main.o file-write.o 
	gcc -o msys main.o file-write.o 
main.o:main.c fileheader.h
	gcc -c main.c
file-write.o:file-write.c fileheader.h
	gcc -c file-write.c

clean:
	rm -f file-write.o main.o msys
