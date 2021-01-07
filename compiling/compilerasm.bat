nasm ../Minix/Source/bootloader.asm -f bin -o bootloader.bin

nasm ../Minix/Source/Util/ExtendedProgram.asm -f bin -o ExtendedProgram.bin

copy /b bootloader.bin+ExtendedProgram.bin  bootloader.flp

pause
