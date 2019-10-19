
        extern          _printf

        GLOBAL           _main

        SECTION         .data
fmt:    DB              "%s", 10, 0
msg:    DB              "123456789012", 0
        
        SECTION         .text
  
_main:        
        XOR             EAX, EAX
        CPUID                               ; get cpu ident
        MOV             [msg], EBX          ; Genu
        MOV             [msg+4], EDX        ; ineI
        MOV             [msg+8], ECX        ; ntel

        PUSH            RBP
        MOV             RDI, fmt
        MOV             RSI, msg
        XOR             RAX, RAX
        CALL            _printf
        POP             RBP

        MOV             RAX, 0
        RET