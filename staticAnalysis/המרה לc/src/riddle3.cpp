//
// Created by Shoham on 4/5/2022.
//

#include "riddle3.h"



void print_triangle(int x, int y) {
    for (int i = x; i > 0 ; i--)
    {
        for (int j = 1; j <= i; j++)
            printf("%s", "*");
        printf("%s", "\n");
    }
    printf("%s", "\n");
}


int main() {
    int i, j;
    scanf_s("%d", &i);
    scanf_s("%d", &j);
    print_triangle(i, j);
    return 0;
}
