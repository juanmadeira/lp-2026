#include <stdio.h>

int main() {
    int n = 0;
    int result = 0;
    printf("Digite um número para calcular seu fatorial: ");
    scanf("%d",&n);

    for(int i = n-1; i > 1; i--){
        if (i == (n-1)) {
            result += n * i;
        } else {
            result = result * i;
        }
    }

    printf("O resultado é %d\n",result);

    return 0;
}