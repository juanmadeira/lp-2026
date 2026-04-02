#include <stdio.h>

int main() {
    int n = 0;
    int primo = 1;
    printf("Digite um número para verificar se é primo: ");
    scanf("%d",&n);

    for(int i = n-1; i > 1; i--){
        printf("%d%d\n",i,primo);
        if(n % i == 0) {
            primo = 0;
        }
    }

    if(primo == 1) {
        printf("O número %d é primo\n",n);
    } else {
        printf("O número %d não é primo\n",n);
    }
    
    return 0;
}