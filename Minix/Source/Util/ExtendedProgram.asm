
[org 0x7e00]

mov bx, ExtendedSpaceSuccess
call PrintString

jmp $

%include "../Minix/Source/Util/StringPrinter.asm"

ExtendedSpaceSuccess:
	db 'Extended space loaded...'

times 2048-($-$$) db 0
