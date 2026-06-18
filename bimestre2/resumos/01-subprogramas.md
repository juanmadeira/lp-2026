# RESUMO - Subprogramas
## Fundamentos e definições
* **Controle de fluxo**: Cada subprograma possui um ponto de entrada único; o programa chamador é suspenso e o controle retorna obrigatoriamente a ele após o término.
* **Protocolo**: Define a interface completa, incluindo o nome, o perfil de parâmetros (número, ordem e tipos) e o tipo de retorno.
* **Variáveis locais**: Podem ser estáticas (eficientes, mantêm histórico) ou dinâmicas de pilha (permitem recursão, mas têm custo de alocação).

## Modelos de passagem de parâmetros
* **Por valor (_In mode_)**: O valor real inicializa o formal, geralmente por **cópia**. É seguro, mas custoso para estruturas grandes.
* **Por resultado (_Out mode_)**: O formal age como variável local e seu valor final é copiado para o real no retorno.
* **Por referência (_Inout mode_)**: Passa-se o endereço de memória. É eficiente por evitar cópias, mas pode gerar _aliases_ e efeitos colaterais.

## Conceitos avançados
* **Corrotinas**: Subprogramas com múltiplas entradas que se autocontrolam via continuações, mantendo uma relação simétrica de controle (suportado em Lua).
* **Registro de ativação**: Layout de memória (dados, parâmetros, endereços) criado dinamicamente na pilha para cada execução.

