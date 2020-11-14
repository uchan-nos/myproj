#include <stdio.h>

int main() {
  printf("hello, world!\n");

  for (int i = 0; i < 5; ++i) {
    printf("%d\n", i);
  }

  int sum = 0;
  for (int i = 1; i <= 10; ++i) {
    sum += i;
  }
  printf("sum = %d\n", sum);
}
