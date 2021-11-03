%include "asm_io.inc"

segment .data

prompt1 db "Insira um numero: ", 0
prompt2 db "Insira outro numero: ", 0

outmsg1 db "A soma é: ", 0
outmsg2 db "A subtração é: ", 0

segment .bss

input1 resd 1
input2 resd 1
res    resd 1

segment .text

global soma_bcd, subtracao_bcd

soma_bcd:
  enter 0, 0              ; setup routine
  pusha

  mov   eax, prompt1
  call  print_string

  call  read_int          ; lê o primeiro inteiro
  mov   [input1], eax     ; e armazena em input1

  mov   eax, prompt2
  call  print_string

  call  read_int          ; lê o segundo inteiro
  mov   [input2], eax     ; e armazena em input2

  mov   eax, [input1]     ; realiza a
  add   eax, [input2]     ; soma de input1 e input2

  mov   [res], eax        ; res = soma

  popa
  mov   eax, [res]        ; retorna para o programa C com o resultado
  leave
  ret

subtracao_bcd:
  enter 0, 0              ; setup routine
  pusha

  mov   eax, prompt1
  call  print_string

  call  read_int          ; lê o primeiro inteiro
  mov   [input1], eax     ; e armazena em input1

  mov   eax, prompt2
  call  print_string

  call  read_int          ; lê o segundo inteiro
  mov   [input2], eax     ; e armazena em input2

  mov   eax, [input1]     ; realiza a
  sub   eax, [input2]     ; subtracao de input1 e input2

  mov   [res], eax        ; res = subtracao

  popa
  mov   eax, [res]         ; retorna para o programa C com o resultado
  leave
  ret
