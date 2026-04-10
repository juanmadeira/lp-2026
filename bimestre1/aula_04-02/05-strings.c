#include <stdio.h>

int main() {
    char frase[200];
    printf("Insira uma frase: ");
    fgets(frase, sizeof(frase), stdin);

    char palavra[200];
    printf("Insira uma palavra para verificar sua ocorrência na frase: ");
    fgets(palavra, sizeof(palavra), stdin);

    int count = 0;
    int lenFrase = 0, lenPalavra = 0;

    while (frase[lenFrase] != '\0' && frase[lenFrase] != '\n') { lenFrase++; }
    while (palavra[lenPalavra] != '\0' && palavra[lenPalavra] != '\n') { lenPalavra++; }
    palavra[lenPalavra] = '\0';
    
    for (int i = 0; i <= (lenFrase - lenPalavra); i++) {
        int igual = 1; 
        for (int j = 0; j < lenPalavra; j++) {
            if (frase[i + j] != palavra[j]) {
                igual = 0; 
                break;
            }
        }
        if (igual == 1) { count++; }
    }

    printf("A palavra \"%s\" apareceu %d vezes na frase.",palavra,count);

    return 0;
}