# RESUMO - Herança e polimorfismo
## Reuso e Especialização
* **Extensibilidade**: A herança permite criar subclasses que herdam propriedades de superclasses, evitando duplicidade [41, 42].
* **Java**: Suporta apenas **herança simples** via palavra-chave `extends` [42, 43].
* **Acesso**: O modificador **protected** permite que subclasses acessem membros sem expô-los externamente [43].

## Polimorfismo e Vinculação
* **Sobrescrita (Overriding)**: Subclasses redefinem métodos herdados para comportamentos específicos [44].
* **Ligação Tardia (Late Binding)**: A decisão sobre qual método executar ocorre em **tempo de execução** baseado no tipo real do objeto [45].
* **Casting**: **Upcasting** (automático) trata a subclasse como superclasse; **Downcasting** requer verificação manual [45, 46].
