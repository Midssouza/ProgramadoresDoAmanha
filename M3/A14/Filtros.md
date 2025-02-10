# Filtragem de Resultados no MySQL com SakilaDB

### Introdução

Ao trabalhar com bancos de dados relacionais como o MySQL, muitas vezes é necessário filtrar e organizar os resultados para obter informações específicas. Neste material, abordaremos os principais comandos de filtragem usando o banco SakilaDB, um banco de dados de exemplo fornecido pelo MySQL.

##  BETWEEN

O operador BETWEEN é utilizado para filtrar valores dentro de um intervalo, incluindo os extremos.

**Exemplo:**

Listar os filmes com duração entre 90 e 120 minutos:

![image](https://github.com/user-attachments/assets/33f4c1a3-85d3-4234-9a8c-d41ea9294510)

 ## IN
O operador IN permite especificar múltiplos valores para um campo, tornando a consulta mais concisa do que usar múltiplos OR.

**Exemplo:**

Obter os filmes que pertencem a categorias específicas:

![image](https://github.com/user-attachments/assets/ecd492c0-275a-40a0-898a-66ca20065508)

## LIKE

O operador LIKE é usado para buscar padrões em colunas do tipo VARCHAR ou TEXT. Utiliza % para representar qualquer sequência de caracteres e _ para um único caractere.

**Exemplo:**

Buscar filmes cujo título começa com "A":

![image](https://github.com/user-attachments/assets/e95352e7-5d60-4a2d-890b-5cb43c4f9c6f)


No MySQL, você pode usar LIKE com wildcards (% e _) para buscar padrões em colunas do tipo VARCHAR ou TEXT. Porém, se o nome contiver caracteres especiais como asterisco (*), aspas ("), 
porcentagem (%), underline (_), barra invertida (\), pode ser necessário escapar esses caracteres ou usar expressões regulares.

1️⃣ **Procurar qualquer nome começando com "a"**

![image](https://github.com/user-attachments/assets/377f7834-31b0-4e24-a9e1-af27d8bc8259)

* % representa qualquer sequência de caracteres (incluindo nenhum caractere).

2️⃣ **Buscar nomes que tenham um caractere especial literal**

  Se quiser procurar por um nome contendo % ou _, você precisa escapar com \:

![image](https://github.com/user-attachments/assets/62971bde-d8d4-400f-92d5-b2e56cd4528f)

* Aqui _ normalmente significaria "qualquer caractere", mas com ESCAPE '\', ele é tratado como um caractere literal.

  3️⃣ **Buscar com Expressões Regulares (REGEXP)**

  Outra opção é usar REGEXP se precisar de mais controle:

  ![image](https://github.com/user-attachments/assets/a224b301-a0ac-4bd7-9606-1fcbfb1b8563)

*  . → Qualquer caractere único.
* .* → Qualquer sequência de caracteres (como % no LIKE).
* % → Aqui será tratado como um caractere normal.




##  DISTINCT 

O operador DISTINCT remove duplicatas dos resultados, exibindo apenas valores únicos.

**Exemplo:**

Listar todas as categorias de filmes sem repetições:

![image](https://github.com/user-attachments/assets/9c4775d4-6c96-40fa-a3ca-ca25f99967be)

## ORDER BY 

O ORDER BY é usado para ordenar os resultados em ordem crescente (ASC) ou decrescente (DESC).

**Exemplo:**

Ordenar os clientes por sobrenome em ordem alfabética:

![image](https://github.com/user-attachments/assets/b36d8a65-8267-4ee4-b93c-73ac3de434af)


##  MAX e MIN 

Os operadores MAX e MIN retornam, respectivamente, o maior e o menor valor de uma coluna.

**Exemplo:**

Obter o maior e o menor tempo de duração de filmes:

![image](https://github.com/user-attachments/assets/e822648c-831c-4dc7-9253-0eda96ad91b1)


### 







