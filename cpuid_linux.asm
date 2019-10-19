        GLOBAL          _start
        
        SECTION         .data
msg:    DB              "123456789012", 10
        
        SECTION         .text
_start:        
        XOR             EAX, EAX
        CPUID                               ; get cpu ident
        MOV             [msg], EBX          ; Genu
        MOV             [msg+4], EDX        ; ineI
        MOV             [msg+8], ECX        ; ntel

        MOV             RAX, 1              ; system call for write
        MOV             RDI, 1              ; stdout
        MOV             RSI, msg            ; address of message to write
        MOV             RDX, 13             ; number of bytes
        SYSCALL                             ; invoke

        MOV             RAX, 60             ; system call for exit
        XOR             RDI, RDI            ; exit code 0
        SYSCALL                             ; invoke