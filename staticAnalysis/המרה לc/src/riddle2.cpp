//
// Created by Shoham on 4/5/2022.
//

#include "riddle2.h"

void print_rectangle(int x, int y) {
    for (int i = 1; i <= x; i++)
    {
        for (int j = 1; j <= y; j++)
            printf("%s", "*");
        printf("%s", "\n");
    }
    printf("%s", "\n");
}



int main() {
    int i, j;
    scanf_s("%d", &i);
    scanf_s("%d", &j);
    print_rectangle(i, j);
    return 0;
}
