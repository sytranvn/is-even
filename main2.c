#include <stdio.h>

int mod(int a) {
  return a % 2;
}

int and(int a) {
  return a & 1;
}

int main() {
  int a;
  scanf("%d", &a);

  int b = mod(a);
  int c = and(a);

  printf("%d %d", b, c);
  return 0;
}
