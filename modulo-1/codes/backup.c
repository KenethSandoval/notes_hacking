#include <stdio.h>

void main() {

  setuid(0);

  printf("\n\n[*]Listando procesos (/usr/bin/ps):\n\n");
  system("/usr/bin/ps");
  
  printf("\n\n[*]Listando procesos (ps):\n\n");
  system("ps");
}

