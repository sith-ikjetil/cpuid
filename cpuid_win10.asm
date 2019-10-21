
        extern          GetStdHandle
        extern          WriteConsoleA

        global           _main

        section         .data
msg:                    db              "123456789012", 0
handle:                 dd              0       
written:                dd              0
        section         .text
_main:        
        xor             eax,eax
        cpuid                               ; get cpu ident
        mov             [msg], ebx          ; Genu
        mov             [msg+4], edx        ; ineI
        mov             [msg+8], ecx        ; ntel

        push            rbp
        mov             rcx, -11
        call            GetStdHandle
        mov             [handle], eax
        pop             rbp

        push            rbp
        mov             rcx, [handle]
        mov             rdx, msg
        mov             r8, 12
        mov             r9, written
        xor             rsi,rsi
        push            rsi
        call            WriteConsoleA
        pop             rsi
        pop             rbp

        mov             rax, 0
        ret