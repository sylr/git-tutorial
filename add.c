#include <stdio.h>
#include <stdlib.h>
#include "math.h"

int main(int argc, char *argv[]) {
    int result = madd(atoi(argv[1]), atoi(argv[2]));

    printf("%d\n", result);

    return 0;
}
