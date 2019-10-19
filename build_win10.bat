nasm -f Win64 cpuid_win10.asm
link cpuid_win10.obj /MACHINE:AMD64 /ENTRY:_main /SUBSYSTEM:CONSOLE /DEFAULTLIB:msvcrt.lib
