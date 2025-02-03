# Tipos de Dados 

O MySQL, um dos principais sistemas de gerenciamento de banco de dados relacionais, oferece uma variedade de tipos de dados para que os desenvolvedores possam armazenar dados de diferentes tipos e formatos. A gestão de dados é fundamental para qualquer sistema de informação, e um dos aspectos mais importantes da gestão de dados é a escolha do tipo de dado adequado para cada valor armazenado na base de dados. Além disso, aprender MySQL e ter uma compreensão clara dos tipos de dados pode ajudá-lo a escrever código 
mais eficiente e escalável, e a evitar erros comuns relacionados à gestão de dados.<br>

## Tipos de dados numéricos

Os tipos de dados numéricos do MySQL são usados para armazenar valores numéricos com diferentes tamanhos e precisões.<br>

**-INT:** Utiliza-se o tipo de dados INT para armazenar valores inteiros. Veja o exemplo:<br>

**INSERT INTO meus_valores (valor_inteiro) VALUES (10);** <br>

**-BIGINT**: O tipo de dados BIGINT é semelhante ao tipo INT, mas pode armazenar valores inteiros maiores, adequado para armazenar valores inteiros grandes e nesse sentido, utilizado em tabelas com muitas linhas e colunas. Veja o exemplo:

**INSERT INTO meus_valores (valor_grande) VALUES (9223372036854775808);**

# Tipos de dados de caractere

Os tipos de dados de caractere do MySQL são usados para armazenar dados de texto e caracteres.

**CHAR:** O tipo de dados CHAR é usado para armazenar dados de texto fixos com um comprimento específico. Nesse sentido, ele é usado ao criar tabelas para armazenar valores de texto com o mesmo tamanho em todas as colunas. Veja o exemplo que cria uma tabela “meus_valores” com uma coluna “nome” e armazena textos de no máximo 10 caracteres de comprimento.<br>

**CREATE TABLE meus_valores (
    nome CHAR(10)
);**

**VARCHAR:** O tipo de dados VARCHAR é semelhante ao tipo CHAR, mas permite que os valores de texto sejam variáveis, com comprimentos diferentes em cada coluna. Dessa forma, ele é usado ao criar tabelas para armazenar valores de texto com comprimentos variáveis. Veja o exemplo abaixo que cria uma tabela “meus_valores” com uma coluna “email” que pode armazenar textos de até 200 caracteres de comprimento, sendo flexível quanto ao tamanho dos dados armazenados :<br>

**CREATE TABLE meus_valores (
    email VARCHAR(200)
);**

**TEXT:** Utiliza-se o tipo de dados TEXT para armazenar dados de texto longos e complexos, com comprimentos que variam de 1 a 4 GB. Assim, armazena valores de texto com muito conteúdo, como artigos de blog e documentos. Veja o exemplo:<br>

**INSERT INTO meus_valores (descricao) VALUES ('Este é um exemplo de valor de texto longo');**

**BLOB:** Utiliza-se o tipo de dados BLOB para armazenar dados binários, como imagens, vídeos e arquivos de documentos. Nesse sentido, armazena valores de grande porte e pode armazenar até 65.535 bytes de dados. Veja o exemplo:<br>

**INSERT INTO meus_valores (imagem) VALUES (FILE('/caminho/para/imagem.jpg'));**

## Tipos de dados de texto completo
**FULLTEXT:**
Utiliza-se o tipo de dados FULLTEXT para armazenar dados de texto e realizar consultas de texto completo. Assim, suporta consultas de texto completo em vários campos e permite o uso de operações de colisão e proximidade para encontrar resultados mais precisos.<br>

**CREATE TABLE livros ( <br> 
  id INT PRIMARY KEY,<br>
  titulo TEXT,<br>
  autor TEXT,<br>
  conteudo TEXT,<br>
  KEY(conteudo)(FULLTEXT)<br>
);**<br>

**INSERT INTO livros (id, titulo, autor, conteudo) VALUES (1, 'Livro 1', 'Autor 1', 'Conteúdo 1, Conteúdo 2, Conteúdo 3');**

Neste exemplo, a coluna “conteudo” é do tipo TEXT e é indexada com FULLTEXT. Assim, isso permite que o MySQL realize consultas de texto completo em todas as colunas indexadas com FULLTEXT.

## Tipos de dados de data e hora do MySQL

Os tipos de dados de data e hora do MySQL são usados para armazenar valores de data e hora.

**DATE:** Utiliza-se o tipo de dados DATE para armazenar apenas a data sem a hora. Portanto, está composto por 8 bytes e pode armazenar valores de data no intervalo de 1000 a 9999 para o ano e de 0 a 65535 para o dia do mês. Veja o exemplo:<br>

**INSERT INTO meus_valores (data) VALUES ('2022-03-14');**<br>

**TIME:** Utiliza-se o tipo de dados TIME para armazenar apenas a hora sem a data. Veja o exemplo:<br>

**INSERT INTO meus_valores (hora) VALUES ('13:30:00');**<br>

**DATETIME** Utiliza-se o tipo de dados DATETIME para armazenar valores de data e hora juntos. Veja o exemplo:<br>

**INSERT INTO meus_valores (data_hora) VALUES ('2022-03-14 13:30:00');**

**TIMESTAMP:** O tipo de dados TIMESTAMP é semelhante ao tipo DATETIME, mas inclui a precisão do segundo. Veja o exemplo:**

**INSERT INTO meus_valores (data_hora_segundos) VALUES ('2022-03-14 13:30:00');**

## Tipos de dados binários do MySQL

O MySQL suporta vários tipos de dados binários, cada um dos quais tem suas próprias características e utilidades. Aqui estão:<br>

**BIT:** O tipo de dados BIT é um tipo binário simples que pode ter um único valor de 0 ou 1. Veja o exemplo:<br>

**CREATE TABLE pessoas (<br>
  id INT PRIMARY KEY,<br>
  sexo BIT);** <br>

**INSERT INTO pessoas (id, sexo) VALUES (1, 1);** <br>

**BITMAP:** O tipo de dados BITMAP é um tipo binário mais complexo que permite armazenar vários valores de bits em uma única coluna. Veja o exemplo:<br>

**CREATE TABLE pessoas (<br>
  id INT PRIMARY KEY, <br>
  hobbies BITMAP);** <br>

**INSERT INTO pessoas (id, hobbies) VALUES (1, 0b00100000);** <br>
**SET:** O tipo de dados SET é um tipo binário que permite armazenar vários valores de bits em uma única coluna. Nesse sentido, o SET é semelhante ao BITMAP, porém mais fácil de usar e oferece uma melhor desempenho. Veja o exemplo: <br>

**CREATE TABLE pessoas (<br>
  id INT PRIMARY KEY,<br>
  hobbies SET);** <br>

**INSERT INTO pessoas (id, hobbies) VALUES (1, 'leitura, cinema');** <br>

**ENUM:** O tipo de dados ENUM é um tipo binário que permite armazenar um valor de uma lista prédefinida de valores. Veja o exemplo: <br>

**CREATE TABLE cores ( <br>
  id INT PRIMARY KEY, <br>
  cor ENUM('verde', 'azul', 'roxo'));** <br>

**INSERT INTO cores (id, cor) VALUES (1, 'verde');** <br>

## Tipos de dados de intervalo

**YEAR:** Utilizamos o tipo de dados YEAR para armazenar um número de ano, armazena valores de 1 a 9999. Dessa forma, muito usado para armazenar a data de nascimento ou a data de início de um contrato, por exemplo:<br>
**CREATE TABLE pessoas ( <br>
  id INT PRIMARY KEY, <br>
  nascimento YEAR);** <br>

**INSERT INTO pessoas (id, nascimento) VALUES (1, 1990);**
**MONTH:** Utilizamos o tipo de dados MONTH para armazenar um número de mês. Assim, armazena valores de 1 a 12, por exemplo:<br>
**CREATE TABLE pessoas ( <br>
  id INT PRIMARY KEY, <br>
  nascimento MONTH);** <br>

**INSERT INTO pessoas (id, nascimento) VALUES (1, 1);**

**DAY:** usamos o tipo de dados DAY para armazenar um número de dia da semana. Nesse sentido, armazena valores de 0 a 6, onde 0 representa domingo e 6 representa sábado, por exemplo: <br>

**CREATE TABLE pessoas (<br>
  id INT PRIMARY KEY,<br>
  nascimento DAY);** <br>

**INSERT INTO pessoas (id, nascimento) VALUES (1, 0);**

## Tipos de dados geométricos do MySQL

Os tipos de dados geométricos do MySQL são usados para armazenar dados de geometria espaciais, como pontos, linhas e polígonos.<br>

**POINT:** Utiliza-se o tipo de dados POINT para armazenar um ponto em uma superfície. Nesse sentido, representado por uma tupla de valores (x, y), onde x e y são os valores de latitude e longitude do ponto.<br>

**CREATE TABLE locais (br>
  id INT PRIMARY KEY,<br>
  posicao POINT);** <br>

**INSERT INTO locais (id, posicao) VALUES (1, (10.5, -69.5));** <br>

Neste exemplo, a coluna “posicao” é do tipo POINT e armazena a localização de um ponto em uma superfície. O valor “(10.5, -69.5)” neste caso representa a latitude e longitude do ponto.<br>

**LINE:** Usamos o tipo de dados LINE para armazenar uma linha em uma superfície. Assim, representado por uma sequência de pontos (x1, y1, x2, y2, …), onde cada ponto representa um ponto na linha. Veja o exemplo:<br>
**CREATE TABLE fronteiras (<br>
  id INT PRIMARY KEY<br>
  fronteira LINE);** <br>

**INSERT INTO fronteiras (id, fronteira) VALUES (1, ('0,0' ,'10,0', '10,10', '0,10', '0,0'));** <br>

Assim, Neste exemplo, a coluna “fronteira” é do tipo LINE e armazena a localização de uma linha em uma superfície.<br>

**POLYGON:** Utilizamos o tipo de dados POLYGON para armazenar um polígono em uma superfície. Nesse sentido, representado por uma sequência de linhas (x1, y1, x2, y2, …, xn, yn), onde cada linha representa um ponto na linha.<br>
**CREATE TABLE poligonos (<br>
  id INT PRIMARY KEY,<br>
  poligono POLYGON);** <br>

**INSERT INTO poligonos (id, poligono) VALUES (1, POLYGON ('LINESTRING(-10.5 -69.5, 0 -69.5, 0 -10.5, -10.5 -69.5)'));** <br>

Neste exemplo, a coluna “poligono” é do tipo POLYGON e armazena a localização de um polígono em uma superfície.<br>

**GEOMETRY:** O tipo de dados GEOMETRY é um tipo de dados que suporta vários tipos de geometria espaciais, incluindo POINT, LINE e POLYGON. Nesse sentido, utilizamos para armazenar dados de geometria espaciais mais complexos, como curvas e polígonos irregulares.<br>

## Tipos de dados de Unicode

**UTF-8:** Utilizamos o tipo de dados UTF-8 para armazenar dados em formato Unicode em byte.<br>

**CREATE TABLE example_table (<br>
  id INT NOT NULL AUTO_INCREMENT,<br>
  name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,<br>
  PRIMARY KEY (id)<br>
);** <br>

Neste exemplo, definimos a coluna “name” como do tipo VARCHAR e utiliza o conjunto de caracteres utf8mb4, que lida com caracteres em branco de até 3 bytes, o que inclui a maioria dos idiomas e scripts.<br>

**UTF-16:** Utilizamos o tipo de dados UTF-16 para armazenar dados em formato Unicode em 16 bits. Nesse sentido, utilizamos muito em aplicações que exigem mais precisão de ponto flutuante.<br>

**CREATE TABLE example_table (<br>
  id INT NOT NULL AUTO_INCREMENT,<br>
  name VARBINARY(65535) CHARACTER SET utf16 COLLATE utf16_general_ci,<br>
  PRIMARY KEY (id)<br>
);** <br>

Neste exemplo, definimos a coluna “name” como do tipo VARBINARY e utiliza o conjunto de caracteres utf16, que lidar com caracteres em branco de até 2 bytes.<br>




