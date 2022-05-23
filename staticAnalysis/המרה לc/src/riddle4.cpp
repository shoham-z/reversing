//
// Created by Shoham on 4/5/2022.
//

#include "riddle4.h"

int Max(int Num1, int Num2) {
    return (Num1 > Num2) ? Num1 : Num2;
}


int main() {
    int num1, num2;
    scanf_s("%d", &num1);
    scanf_s("%d", &num2);
    printf("%d", Max(num1,num2));
    return 0;
}
