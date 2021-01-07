
[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

mov bx, BootString
call PrintString

jmp $

%include "../Minix/Source/Util/StringPrinter.asm"

times 510-($-$$) db 0

dw 0xaa55