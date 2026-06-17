# RESUMO - Subprogramas
## Fundamentos e definições
* **Controle de fluxo**: Cada subprograma possui um ponto de entrada único; o programa chamador é suspenso e o controle retorna obrigatoriamente a ele após o término [1].
* **Protocolo**: Define a interface completa, incluindo o nome, o perfil de parâmetros (número, ordem e tipos) e o tipo de retorno [2].
* **Variáveis locais**: Podem ser **estáticas** (eficientes, mantêm histórico) ou **dinâmicas de pilha** (permitem recursão, mas têm custo de alocação) [3].

## Modelos de passagem de parâmetros
* **Por valor (In mode)**: O valor real inicializa o formal, geralmente por **cópia**. É seguro, mas custoso para estruturas grandes [3].
* **Por resultado (Out mode)**: O formal age como variável local e seu valor final é copiado para o real no retorno [4].
* **Por referência (Inout mode)**: Passa-se o endereço de memória. É eficiente por evitar cópias, mas pode gerar **apelidos (aliases)** e efeitos colaterais [5].

## Conceitos avançados
* **Corrotinas**: Subprogramas com múltiplas entradas que se autocontrolam via **continuações**, mantendo uma relação simétrica de controle (suportado em Lua) [6].
* **Registro de ativação**: Layout de memória (dados, parâmetros, endereços) criado dinamicamente na pilha para cada execução [7, 8].

