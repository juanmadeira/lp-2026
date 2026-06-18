# RESUMO - Herança e polimorfismo
## Reuso e Especialização
* **Extensibilidade**: A herança permite criar subclasses que herdam propriedades de superclasses, evitando duplicidade.
* **Java**: Suporta apenas herança simples via palavra-chave `extends`.
* **Acesso**: O modificador `protected` permite que subclasses acessem membros sem expô-los externamente.

## Polimorfismo e Vinculação
* **Sobrescrita (_Overriding_)**: Subclasses redefinem métodos herdados para comportamentos específicos.
* **Ligação Tardia (_Late Binding_)**: A decisão sobre qual método executar ocorre em tempo de execução, baseado no tipo real do objeto.
* **Casting**: O _upcasting_ (automático) trata a subclasse como superclasse, já o _downcasting_ requer verificação manual.
