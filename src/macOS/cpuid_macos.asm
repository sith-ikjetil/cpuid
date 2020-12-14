        global          _start

        section         .data
msg:    db              "123456789012", 10
        
        section         .text
_start:   
        xor             eax, eax
        cpuid                                   ; get cpu ident
        mov             [rel msg], ebx              ; Genu
        mov             [rel msg+4], edx            ; ineI
        mov             [rel msg+8], ecx            ; ntel

        mov             rax, 0x02000004         ; system call for write
        mov             rdi, 1                  ; stdout
        mov             rsi, msg                ; address of message to write
        mov             rdx, 13                 ; number of bytes
        syscall                                 ; invoke

        mov             rax, 0x02000001         ; system call for exit
        xor             rdi, rdi                ; exit code 0
        syscall                                 ; invoke