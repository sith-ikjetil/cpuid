nasm -f elf64 cpuid_linux.asm
ld -m elf_x86_64 -o cpuid cpuid_linux.o
