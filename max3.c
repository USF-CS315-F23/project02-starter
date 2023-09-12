#include <stdio.h>
#include <stdlib.h>

int max3_c(int a, int b, int c);
int max3_s(int a, int b, int c);

int main(int argc, char **argv) {
    if (argc != 4) {
        printf("usage: max3 a b c\n");
        exit(-1);
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int c = atoi(argv[3]);

    int c_result = max3_c(a, b, c);
    printf("C: %d\n", c_result);

    int s_result = max3_s(a, b, c);
    printf("Asm: %d\n", s_result);

    return 0;
}
