#include <stdio.h>

int main() {
    int f = 0;
    printf("Digite a temperatura em ºF: ");
    scanf("%d",&f);

    int c = ((f-32)*5)/9;

    printf("%dºF = %dºC",f,c);

    return 0;
}