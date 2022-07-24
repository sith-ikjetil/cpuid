#!/bin/bash
#: Title       : build-release.sh
#: Date        : 2022-07-23
#: Author      : Kjetil Kristoffer Solberg <post@ikjetil.no>
#: Version     : 1.0
#: Description : Builds cpuid.
echo "Building cpuid ..."
echo "> using release build < "

nasm -f elf64 cpuid_linux.asm
if [[ $? -eq 0 ]]
then
    echo "> cpuid compiled ok"
else
    echo "> cpuid compiled error"
fi

ld -m elf_x86_64 -o cpuid cpuid_linux.o
if [[ $? -eq 0 ]]
then
    echo "> cpuid linked ok"
else
    echo "> cpuid linked error"
fi

echo "> build process complete <"

