#include<stdio.h>
#define MAX_NUM 1000

int main(void) {
  int num = 0;
  int i;

  int sum = 0;
  for (i = 0; i < MAX_NUM; i++) {
    if (i % 3 == 0 || i % 5 == 0) sum += i;
  }

  printf("%d\n", sum);
}
