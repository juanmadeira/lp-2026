# RESUMO - Evolução das linguagens de programação
## FORTRAN
O lançamento do Fortran (Mathematical Formula Translating System) em 1957 foi o divisor de águas, permitindo o conceito moderno de programa compilado. Foi a resposta de software às inovações de hardware do IBM 704, a primeira máquina a oferecer suporte via hardware para indexação de registradores e ponto flutuante.


| Versão | Ano | Principal Inovação e Impacto Arquitetural |
| ------ | --- | ----------------------------------------- |
| **Fortran I** | 1957 | Primeira versão implementada; introduziu nomes de até seis caracteres, loops de contagem pós-teste (DO), I/O formatado e subprogramas definidos pelo usuário. Seu compilador exigiu 18 anos de trabalho agregado para ser concluído. |
| **Fortran II** | 1958 | Introduziu a **compilação independente**, o que permitiu a correção de bugs de forma modular e a criação de procedimentos mais complexos. |
| **Fortran IV** | 1960-62 | Implementou a declaração explícita de tipos, instruções de seleção lógica e permitiu que nomes de subprogramas fossem passados como parâmetros. Foi padronizada pela ANSI em 1966. |
| **Fortran 77** | 1978 | Tornou-se o novo padrão, trazendo suporte para manipulação de cadeias de caracteres (strings), controle de loop lógico e a instrução **IF-THEN-ELSE**. |
| **Fortran 90** | 1990 | Representou a mudança mais significativa, adicionando suporte a **módulos, arrays dinâmicos, ponteiros, recursão** e a estrutura de controle CASE. |


## ALGOL
* ALGOL 58: Formalizou o conceito de tipo, permitiu nomes de qualquer comprimento e introduziu o operador de atribuição := e as instruções compostas begin...end.
* ALGOL 60: Evoluído em Paris, introduziu a estrutura de bloco (escopo local), recursão e matrizes dinâmicas. Foi a primeira linguagem com sintaxe formalizada via BNF (Backus-Naur Form).

## COBOL
1. Macro-instruções: Primeiro recurso de macro em alto nível.
2. Estruturas Hierárquicas: Criação de registros de dados.
3. Separação de Divisões: A "Data Division" era isolada da lógica de código, uma inovação organizacional.
4. Sintaxe de Verbos: Cada declaração começava obrigatoriamente com um verbo, reforçando o objetivo de clareza textual.

## BASIC, APL e SNOBOL
* BASIC (1964): Projetado por Kemeny & Kurtz para o sistema de tempo compartilhado (time-sharing). Priorizou o tempo do usuário sobre o tempo da CPU, tornando a computação acessível a não-cientistas.
* APL (1960) e SNOBOL (1964): Introduziram a tipagem e alocação dinâmica. Enquanto o Fortran era estático, nestas linguagens as variáveis adquiriam tipo e espaço apenas no momento da atribuição. O APL destacou-se como linguagem de descrição de hardware, enquanto o SNOBOL dominou a manipulação de strings.

## PL/I e ALGOL 68
* PL/I (1965): A tentativa da IBM de criar uma linguagem "Tudo para Todos", unindo o poder científico do Fortran com a capacidade comercial do COBOL. Introduziu o primeiro tratamento de exceções e concorrência, mas sua complexidade excessiva comprometeu a implementação.
* ALGOL 68: Elevou o conceito de ortogonalidade — onde um pequeno conjunto de conceitos primitivos pode ser combinado de forma consistente. Influenciou diretamente a arquitetura de linguagens como Pascal, C e Ada.

## Transição para abstração e modernidade
* SIMULA 67: Introduziu os conceitos de classes, objetos e herança, além de corrotinas. Foi o berço da Programação Orientada a Objetos.
* Pascal (1971): Criada por Niklaus Wirth para o ensino de programação estruturada, dominando a academia por duas décadas.
* Ada: Financiada pelo DoD, representou o maior esforço de design da história, visando unificar milhares de linguagens usadas em sistemas militares em um padrão rigoroso e seguro.

## Genealogia das linguagens (1957 - 1995)
* Linhagem Algorítmica e de Sistemas:
  * ALGOL 60 → CPL → BCPL → B → C → C++ → Java
  * ALGOL 60 → Pascal → Modula-2 → Oberon → Modula-3
  * ALGOL 60 → SIMULA 67 → Smalltalk 80 → Eiffel
  * Pascal → Ada 83 → Ada 95
* Linhagem Fortran:
  * Fortran I → Fortran II → Fortran IV → Fortran 77 → Fortran 90
* Linhagem Comercial:
  * FLOW-MATIC → COBOL → PL/I
* Linhagem Funcional:
  * LISP → Scheme → Common LISP
* Linhagem Dinâmica:
  * BASIC → QuickBASIC → Visual BASIC
  * SNOBOL → ICON
