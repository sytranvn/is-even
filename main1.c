#include <stdio.h>
const char *EVN_MSG = "%d even";
const char *ODD_MSG = "%d even";
void mod(int a) {
  if (a % 2)
    printf(EVN_MSG, a);
  else
    printf(ODD_MSG, a);
}
void and (int a) {
  if (a & 1)
    printf(EVN_MSG, a);
  else
    printf(ODD_MSG, a);
}
int main() {
  int a;
  scanf("%d", &a);
  mod(a);
  and(a);
  return 0;
}
