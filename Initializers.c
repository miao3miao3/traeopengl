#include <stdio.h>

int main()
{
    struct Point
    {
        int x;
        int y;
    };

    struct Point p = {.x = 1, .y = 2};

    printf("p.x = %d\n", p.x);

    return 0;
}