#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Produto {
    char nome[30];
    int codigo;
    double preco;
};

int main(void){
    int operation;
    int currentListLength = 0;
    int maxListLength = 10;

    struct Produto *list = malloc(maxListLength * sizeof(struct Produto));

    while (operation != 0){
        do {
            printf("\n--- MENU ---\n[1] Adicionar produto\n[2] Exibir produtos\n[3] Pesquisar produto\n[0] Sair\n\nDigite uma operação: ");

            scanf("%d", &operation);

            if (operation != 0 && operation != 1 && operation != 2 && operation != 3) {
                printf("\n[ERRO] digite uma operação válida!\n");             
            }

            int hasLineBreak;
            while ((hasLineBreak = getchar()) != '\n' && hasLineBreak != EOF);
        } while (operation != 0 && operation != 1 && operation != 2 && operation != 3);

        switch (operation){
            case 0:
                break;
            case 1:
                printf("\n[Adicionar produto] digite o nome do produto: ");
                fgets(list[currentListLength].nome, 30, stdin);
                list[currentListLength].nome[strcspn(list[currentListLength].nome, "\n")] = 0; // remove \n
                
                printf("[Adicionar produto] digite o código do produto: ");
                scanf("%d", &list[currentListLength].codigo);
                
                printf("[Adicionar produto] digite o preço do produto: ");
                scanf("%lf", &list[currentListLength].preco);

                currentListLength++;
            break;
            case 2:
                printf("\n:: Lista de produtos: \n");
                for (int i = 0; i < currentListLength; i++) {
                    printf("\t#%d %s (R$%.2f)\n", 
                            list[i].codigo, list[i].nome, list[i].preco);
                }
                break;
            break;
            case 3:
                char search[30];
                int foundProduct = 0;

                printf("\n[Pesquisar produto] digite o nome do produto a ser procurado: ");
                fgets(search, sizeof(search), stdin);
                search[strcspn(search, "\n")] = 0;

                printf("\n:: Resultado da pesquisa: \n");
                for (int i = 0; i < currentListLength; i++) {
                    if (strstr(list[i].nome, search)) {
                        printf("#%d %s (R$%.2f)\n", 
                                list[i].codigo, list[i].nome, list[i].preco);
                        
                        foundProduct = 1;
                    }
                }

                if (!foundProduct) {
                    printf("Produto \"%s\" não encontrado!\n", search);
                }
            break;
        }
    };

    printf("\n:: Programa encerrado!\n\n");

    free(list);

    return 0;
}