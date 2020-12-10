nasm -f Win64 cpuid_win10.asm
link cpuid_win10.obj /MACHINE:x64 /ENTRY:_main /SUBSYSTEM:CONSOLE /OUT:cpuid.exe /DEFAULTLIB:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64\Kernel32.lib" /LARGEADDRESSAWARE:NO
