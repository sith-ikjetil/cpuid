#!/bin/bash
#: Title       : build-release.sh
#: Date        : 2022-07-23
#: Author      : Kjetil Kristoffer Solberg <post@ikjetil.no>
#: Version     : 1.0
#: Description : Builds cpuid.
echo "Building cpuid ..."
echo "> using release build < "

nasm -f macho64 cpuid_macos.asm
if [[ $? -eq 0 ]]
then
    echo "> cpuid compiled ok"
else
    echo "> cpuid compiled error"
fi

ld -no_pie -o cpuid cpuid_macos.o -macos_version_min 10.14 -e _start -lSystem
if [[ $? -eq 0 ]]
then
    echo "> cpuid linked ok"
else
    echo "> cpuid linked error"
fi

echo "> build process complete <"




