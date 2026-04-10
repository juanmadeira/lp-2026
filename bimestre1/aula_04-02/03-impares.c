#include <stdio.h>

int main() {
    int n = 0;
    printf("Digite a quantidade de números naturais ímpares desejada: ");
    scanf("%d",&n);

    for(n = n*2; n > 0; n--){
        if(n % 2 != 0){
            printf("%d\n",n);
        }
    }

    return 0;
}