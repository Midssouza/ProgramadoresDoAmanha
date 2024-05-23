# Banco de Dados Relacional


O Modelo de Dados relacional representa os dados contidos
em um Banco de Dados através de relações. Cada relação é uma
tabela.
**Veja o exemplo:**

![](https://i.imgur.com/k7I07tJ.png)

Há 3 campos na tabela DEPARTAMENTO (nome, número e RG Gerente), sendo que o campo Número é chave primária (impede que existam 2 registros iguais no banco de dados). A primeira linha possuí valores "Contabilidade", "1" e "10101010".

Os nomes das tabelas e dos campos são de fundamental importância para nossa compreensão entre o que estamos armazenando, onde estamos armazenando e qual a relação existente entre os dados armazenados.
Cada registro de nossa relação será chamada de linha e cada coluna de nossa relação será chamada de **ATRIBUTO**.

O esquema de uma relação, nada mais são que os campos (colunas) existentes em uma tabela. Já a instância da relação consiste no conjunto de valores que cada atributo assume em um determinado instante. Portanto, os dados armazenados no Banco de Dados, são formados pelas instâncias das relações.

As relações não podem ser duplicadas (não podem existir dois estados do Pará, no conjunto de estados brasileiros, por exemplo), a ordem de entrada de dados no Banco de Dados não
deverá ter qualquer importância para as relações, no que concerne ao seu tratamento.

Chamaremos de Chave Primária ao Atributo que definir um registro, dentre uma coleção de registros.

![](https://i.imgur.com/5ER8DH2.png)


CidCodi e EstCodi, são chaves primárias respectivamente das
tabelas Cidade e Estado, enquanto EstCodi é chave estrangeira na tabela de cidades. É precisamente por este campo (atributo, ou coluna), que será estabelecida a relação entre as tabelas Cidade-->Estado.



#### EXERCÍCIOS:
**1**.Defina o seguinte termo: Sistema de Gerenciamento de
Banco de Dados.

**2**.Quais as vantagens da utilização de um sistema de bancos
de dados?

**3**.Descreva as características gerais de um sistema
gerenciador de base de dados.

**4**.Descrever o modelo relacional de dados.

**5**. Em se tratando de Bancos de Dados Relacionais, qual a
função da Chave Primária em uma tabela?


