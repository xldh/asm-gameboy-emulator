main.o:
	nasm -g -f elf64 -o main.o gb.asm && ld -o main main.o

clean:
	rm -f main main.o
