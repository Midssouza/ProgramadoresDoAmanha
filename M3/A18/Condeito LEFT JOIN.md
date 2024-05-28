Um **LEFT JOIN** é um tipo de junção em bancos de dados relacionais que é usado para combinar registros de duas tabelas com base em uma condição específica. <br> 

 # LEFT JOIN
O **LEFT JOIN** (ou junção à esquerda) é uma operação que combina registros de duas tabelas. Nesta operação, todos os registros da tabela à esquerda 
(a primeira tabela mencionada na junção) são retornados, juntamente com os registros correspondentes da tabela à direita (a segunda tabela mencionada). Se não houver correspondência na tabela à direita, os campos correspondentes dessa tabela serão preenchidos com **NULL**.<br>

### Sintaxe Básica 

A sintaxe básica do **LEFT JOIN** é a seguinte:<br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/45a1ba09-d78d-43a9-ac27-3dfe5a13b0cd)



- **SELECT colunas:** Define as colunas que você deseja selecionar na consulta.
- **FROM tabela1:** Indica a primeira tabela, também conhecida como a tabela à esquerda.
- **LEFT JOIN tabela2:** Especifica a segunda tabela, ou tabela à direita, e o tipo de junção.
- **ON tabela1.coluna_comum = tabela2.coluna_comum:** Define a condição de junção, ou seja, as colunas pelas quais as tabelas serão comparadas e combinadas.

  ##### Exemplo
  Vamos supor que temos duas tabelas:

- **Clientes** (Tabela à esquerda)

- id<br>
- nome <br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/bc43faf5-a04f-43a7-af0c-5aae8c0fba64)


- **Pedidos** (Tabela à direita)

- id_cliente<br>
- data_pedido<br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/c59faf16-1072-4d59-b3dd-f10a6bb80060)


### Consulta com LEFT JOIN:

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/bc1ec86b-1224-4cdd-9cc4-b3ebb62c5622)

**Resultado da consulta** 

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/ae0ca634-467e-46b2-806f-a37be8aa4874)
- João tem 2 pedidos<br>
- Maria tem 1 pedido<br>
- Pedro tem 1 pedido <br>
- Ana não tem nenhum pedido<br>

💻[Solução do Exemplo](https://github.com/Midssouza/ProgramadoresDoAmanha/blob/main/M3/A18/Exemplo_1.sql)

#### Vantagens do LEFT JOIN
-  Permite identificar registros na tabela à esquerda que não têm correspondência na tabela à direita.<br>
- Útil para relatórios onde é necessário listar todos os itens de uma tabela, mesmo que não haja informações correspondentes na outra tabela.<br>


> [!IMPORTANT]
> O LEFT JOIN é uma ferramenta poderosa para combinar dados de duas tabelas de forma que todos os registros da tabela à esquerda sejam incluídos no resultado, independentemente de haver correspondência na tabela à direita.
  Isso é especialmente útil para análises de dados e relatórios onde é importante não perder nenhuma informação da tabela principal.



  
