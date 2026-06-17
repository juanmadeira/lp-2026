# RESUMO - Classes abstratas e interfaces
## Contratos de comportamento
* **Interfaces**: Definem comportamentos comuns sem implementá-los; em Java, permitem que uma classe implemente múltiplos contratos (`implements`) [47, 48].
* **Classes Abstratas**: Servem como modelos obrigatórios para subclasses. Não podem ser instanciadas e contêm **métodos abstratos** (apenas assinatura, sem corpo) [49, 50].

## Regras de Implementação
* **Obrigatoriedade**: Classes concretas que estendem uma classe abstrata **devem** implementar todos os métodos abstratos herdados [50].
* **UML**: Em diagramas, tanto a classe quanto os métodos abstratos são representados em *itálico* [51].
