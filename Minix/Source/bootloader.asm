
[org 0x7c00]

mov [BOOT_DISK], dl

mov bp, 0x7c00
mov sp, bp

mov bx, BootString
call PrintString

call ReadDisk

jmp PROGRAM_SPACE

%include "../Minix/Source/Util/StringPrinter.asm"
%include "../Minix/Source/Util/DiskReader.asm"

times 510-($-$$) db 0

dw 0xaa55