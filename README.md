# NASM SB 2021/1

### Montar BCD

`nasm -f elf bcd.asm`

### Compilando código C

`gcc -m32 -c driver.c`

### Ligando os objetos

`gcc -m32 -o bcd driver.o bcd.o asm_io.o`
