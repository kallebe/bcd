// #include "cdecl.h"
#include <stdio.h>

int soma_bcd(void) __attribute__((cdecl));
int subtracao_bcd(void) __attribute__((cdecl));

int main() {
  int opc = 0;
  int resultado = 0;

  while (opc != 1 && opc != 2) {
    printf("Escolha uma opcao:\n\t1- Soma BCD\n\t2- Subtracao\n\nSua escolha: ");
    scanf("%d", &opc);
    printf("\n");
  }

  if (opc == 1)
    resultado = soma_bcd();
  else
    resultado = subtracao_bcd();

  return 0;
}
