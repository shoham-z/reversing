//
// Created by Shoham on 4/5/2022.
//

#include "riddle1.h"

void func(int num)
{
    for(int i = 1; i <= num; i++)
        printf("%s", "*");
    printf_s("%s", "\n");
}

int main() {
    int user_input;
    scanf_s("%d", &user_input);
    func(user_input);
    return 0;
}