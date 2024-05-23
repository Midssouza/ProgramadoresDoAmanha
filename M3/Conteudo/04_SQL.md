# SQL

### INTRODUÇÃO

Para se utilizar, administrar, e trabalhar com um banco de
dados é utilizada uma linguagem padrão, que a maior parte dos
SGBD aceitam. Essa linguagem é a SQL (Structured Query
Language-Linguagem de Consulta Estruturada).

A SQL é um conjunto de declarações que são utilizadas para
acessar os dados utilizando gerenciadores de banco de dados.
Apesar de nem todos os gerenciadores utilizarem a SQL a maior
parte deles aceitam suas declarações.
A SQL pode ser utilizada para todas as atividades relativas a
um banco de dados, podendo ser utilizada pelo administrador de
sistemas, pelo DBA, por programadores, sistemas de suporte à
tomada de decisões e outros usuários finais.
É através dela que você irá criar tabelas, inserir dados, e utilizar
o seu banco de dados.


### SQL para manipulação de bancos de dados MySQL

A SQL possui comandos que são utilizados para manipular os
bancos de dados, as tabelas e os registros existentes. Veja abaixo
como utilizá-los.

**COMANDO CREATE** --> Este comando permite a criação de bancos de dados ou de
tabelas num banco de dados.

Sintaxe:
**CREATE DATABASE** < nome_db >; <br>
onde:,<br>
**nome_db**: indica o nome do Banco de Dados a ser criado.

Exemplo:

**CREATE DATABASE** curso;

Sintaxe:

**CREATE TABLE** < nome_tabela > (<br>
nome_atributo1 < tipo > [ NOT NULL ],<br>
nome_atributo2 < tipo > [ NOT NULL ],<br>
 ......<br>
nome_atributoN < tipo > [ NOT NULL ]<br>
**PRIMARY KEY**(nome_atributo)<br>
) ;

onde:
nome_tabela: indica o nome da tabela a ser criada.
nome_atributo: indica o nome do campo a ser criado na tabela.
tipo: indica a definição do tipo de atributo ( integer(n), char(n),
... ).

**PRIMARY KEY**: esse é o campo utilizado para que não exista
na tabela dois registros iguais. Ele mantém a integridade do banco
de dados. Caso você tente inserir num banco de dados um registro
com uma **PRIMARY KEY** já existente ele emitirá uma mensagem
de erro e impedirá que o registro seja inserido.

Exemplo:
**CREATE table** alunos(<br>
codigo int NOT NULL AUTO_INCREMENT,<br>
nome VARCHAR(20) NOT NULL ,<br>
telefone CHAR(8) NOT NULL,<br>
PRIMARY KEY(codigo)<br>
);
Criação de uma tabela em um banco de dados à partir da
tabela dada (o asterísco determina qual campo é a chave primária):

![](https://i.imgur.com/aOc0xXK.png)

**CREATE TABLE** estudantes(<br>
numerocadastro int NOT NULL auto_increment,<br>
nome varchar(35) not null,<br>
primary key(numerocadastro)<br>
);

**COMANDO DROP**
Este comando elimina a definição da tabela, seus dados e
referências ou um banco de dados existente:

Sintaxe:

**DROP TABLE** < nome_tabela > ;<br>

**DROP DATABASE** <nome_banco_de_dados>;

Exemplo:

**DROP TABLE** alunos; <br>
**DROP DATABASE** curso;<br>
**DROP TABLE** estudantes;

**COMANDO ALTER**

Este comando permite inserir/eliminar atributos nas tabelas já
existentes.

Sintaxe:

**ALTER TABLE** < nome_tabela > ADD / DROP (<br>
nome_atributo1 < tipo > [ NOT NULL ],<br>
nome_atributoN < tipo > [ NOT NULL ]<br>
) ;

### Manipulando dados das tabelas

**COMANDO SELECT**

Realiza uma seleção de informações existentes nas tabelas.
Sintaxe básica:
**SELECT*  [DISTINCT] expressao [AS nome-atributo]<br>
[FROM from-lista]<br>
[WHERE condicao]<br>
[ORDER BY attr_name1 [ASC | DESC ]]<br>

onde:

**DISTINCT**: Elimina linhas duplicadas na seleção.
expressao: Define os dados que queremos selecionar,
normalmente uma ou mais colunas de uma tabela que está em
from-lista.
AS nome-atributo: Define um alias (apelido) para o nome da
coluna.
**FROM**: Lista das tabelas onde a pesquisa será feita.
**WHERE**: Condição para que um registro seja selecionado.
**ORDER BY**: Critério para ordenação dos registros
selecionados. Utilizando ASC a ordem será crescente, utilizando
**DESC** a ordem será decrescente.
Where como base das Restrição de linhas.
A cláusula "where" restringe a seleção de dados, de acordo
com seu argumento. Contém a condição que as linhas devem
obedecer a fim de serem listadas.
Ela pode comparar valores em colunas, literais, expressões
aritméticas ou funções.

A seguir apresentamos operadores lógicos e complementares
a serem utilizados nas expressões apresentadas em where.
Operadores lógicos


### Operadores lógicos

 ![](https://i.imgur.com/eIsD2VT.png)

Exemplos:

**SELECT** cidade, estado FROM brasil WHERE populacao >
100000;

Selecionará os campos cidade e estado da tabela brasil de
todos os registros que tiverem valor maior que 100.000 no campo
populacao.
**SELECT * FROM**cidadao ORDER BY nome DESC;

Selecionará todos os campos da tabela cidadao e utilizará
ordenação decrescente na seleção.

Levando em conta a tabela funcionarios abaixo, veja a
utilização da cláusula SELECT<br>


**Seleções:**  /*criar codigo do banco ded dados funcionarios /8

-Selecionar quantas pessoas existem cadastradas:

**SELECT COUNT(*) FROM** funcionarios;<br>
-Selecionar quantos funcionários existem no departamento 3:<br>
**SELECT COUNT(*) FROM** funcionarios WHERE depto=3;<br>
-Selecionar o nome e o rg dos funcionários que ganham mais
que 3000 reais.<br>
[SELECT nome, rg FROM funcionarios WHERE
salario>3000;
COMANDO INSERT
Adiciona um ou vários registros a uma tabela.
Sintaxe básica:
INSERT INTO destino [(campo1[, campo2[, ...]])]
VALUES (valor1[, valor2[, ...])
A instrução INSERT INTO possuí as partes abaixo:
Destino- O nome da tabela em que os registros devem ser
anexados.
campo1, campo2 - Nomes dos campos aos quais os dados
devem ser inseridos.
valor1, valor2 - Valores para inserir nos campos específicados
do novo registro. Cada valor é inserido no campo que corresponde
à posição do valor na lista: Valor1 é inserido no campo1 do novo
registro, valor2 no campo2 e assim por diante. Você deve separar
os valores com uma vírgula e colocar os campos de textos entre
aspas (" ").