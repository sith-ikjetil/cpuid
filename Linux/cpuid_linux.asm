        global          _start
        
        section         .data
msg:    db              "123456789012", 10
        
        section         .text
_start:        
        xor             eax, eax
        cpuid                               ; get cpu ident
        mov             [msg], ebx          ; Genu
        mov             [msg+4], edx        ; ineI
        mov             [msg+8], ecx        ; ntel

        mov             rax, 1              ; system call for write
        mov             rdi, 1              ; stdout
        mov             rsi, msg            ; address of message to write
        mov             rdx, 13             ; number of bytes
        syscall                             ; invoke

        mov             rax, 60             ; system call for exit
        xor             rdi, rdi            ; exit code 0
        syscall                             ; invoke