nasm -f macho64 cpuid_macos.asm
ld -no_pie -o cpuid cpuid_macos.o -macos_version_min 10.14 -e _start -lSystem
