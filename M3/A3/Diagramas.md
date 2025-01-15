# Diagrama Entidade Relacionamento (DER)

Um Diagrama Entidade Relacionamento (DER) é um Fluxograma que ilustra como as “Entidades” (Usuários, Produtos, Postagens), se relacionam entre si dentro de um sistema de Banco de dados Relacional.

Os Diagramas DER são usados principalmente para modelar e criar bancos de dados relacionais, em termos de regras lógicas e regras de negócio dentro de um modelo lógico de dados.

Um diagrama conceitual é a representação gráfica do modelo de um banco de dados, mostrando entidades, atributos e seus relacionamentos. Ele é essencial para planejar como os dados serão estruturados antes de sua implementação em MySQL.

## Componentes

**Entidade:** Algo que pode ser definido e que pode ter dados armazenados sobre ele — como uma pessoa, um objeto, conceito ou evento. Pense em entidades como substantivos. Exemplos: um cliente, estudante, carro ou produto. Normalmente representado por um retângulo.


### 2. Elementos do Diagrama Conceitual

**Entidades:** Representam os objetos ou conceitos do banco de dados (e.g., Clientes, Produtos, Pedidos).

* Representadas por retângulos.

**Atributos:** Representam as propriedades de uma entidade (e.g., Nome, Preço, Data de Nascimento).

* Representados por elipses conectadas à entidade correspondente.

**Relacionamentos:** Representam as conexões entre as entidades (e.g., um Cliente realiza um Pedido).

 * Representados por losangos.

**Cardinalidade:** Define o tipo de relacionamento entre entidades:

1:1 - Um para um.

1:N - Um para muitos.

N:N - Muitos para muitos.


### 3. Exemplo Prático com Representação Gráfica

##### Exemplo 1 

**Cenário:** Loja de e-commerce

**Entidades identificadas:**

**Cliente:** ID_Cliente, Nome, Email.

**Produto:** ID_Produto, Nome, Preço, Estoque.

**Pedido:** ID_Pedido, Data, ID_Cliente.

**ItemPedido:** ID_Pedido, ID_Produto, Quantidade.

**Relacionamentos:**

Um Cliente pode fazer vários Pedidos (1:N).

Um Pedido pode ter vários ItensPedido (1:N).

Um Produto pode estar em vários ItensPedido (N:N).

#### Diagrama Conceitual Gráfico:

![image](https://github.com/user-attachments/assets/3e728103-0880-4030-876f-5b7e59e35a80)


###### Exemplo 2 

 Um diagrama conceitual para uma biblioteca.

Entidades sugeridas:

**Livro:** ID_Livro, Título, Autor, Gênero.

**Usuário:** ID_Usuário, Nome, Telefone.

**Empréstimo:** ID_Empréstimo, Data_Empréstimo, Data_Devolução.

**Relacionamentos sugeridos:**

Um **Usuário** pode pegar emprestados vários Livros (1:N).

Um **Livro** pode estar associado a vários Empréstimos (N:N).

#### Diagrama Conceitual Gráfico:

![image](https://github.com/user-attachments/assets/b6d0b760-ea3f-42bb-8a5e-4c1d0552bb3a)


###### Exemplo 3
Sistema de gerenciamento de eventos

**Entidades:*

**Evento:** ID_Evento, Nome, Data, Local.

**Participante:** ID_Participante, Nome, Email.

**Ingresso:** ID_Ingresso, Preço, ID_Evento, ID_Participante.

**Relacionamentos:

Um Evento pode ter vários Ingressos (1:N).

Um Participante pode adquirir vários Ingressos (1:N).

#### Diagrama Conceitual Gráfico:

![image](https://github.com/user-attachments/assets/c466ddc0-fa91-4c68-a091-2c9011d5adbe)




