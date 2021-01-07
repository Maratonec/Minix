
PROGRAM_SPACE equ 0x7e00

ReadDisk:
	mov ah, 0x02
	mov bx, PROGRAM_SPACE
	mov al, 2
	mov dl, [BOOT_DISK]
	mov ch, 0x00
	mov dh, 0x00
	mov cl, 0x02

	int 0x13

	jc ReadDisk_FAILED

	ret

BOOT_DISK:
	db 0

ReadDisk_ERROR:
	db 'Disk Read Failed', 0

ReadDisk_FAILED:
	mov bx, ReadDisk_ERROR
	call PrintString

	jmp $