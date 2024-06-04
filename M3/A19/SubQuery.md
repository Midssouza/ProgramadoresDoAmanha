# Subquery

Uma subquery (ou subconsulta) é uma consulta SQL aninhada dentro de outra consulta SQL. Ela é utilizada para fornecer dados intermediários que serão usados pela consulta principal. A subquery pode ser encontrada na cláusula SELECT, FROM, WHERE, ou HAVING da consulta principal, e sua principal função é permitir a execução de operações complexas de uma maneira mais organizada e modular.

### Estrutura Básica
A estrutura básica de uma subquery é a seguinte:

``SELECT coluna1, coluna2
FROM tabela_principal
WHERE coluna = (SELECT coluna
                FROM tabela_secundaria
                WHERE condição);`` <br>

                
Neste exemplo, a subquery está dentro da cláusula WHERE e é usada para encontrar um valor que será comparado na condição da consulta principal.

## Tipos de Subqueries

1. **Subqueries** Escalares: Retornam um único valor. Exemplo: <br>

``SELECT nome, salario
FROM funcionarios
WHERE salario > (SELECT AVG(salario)
                 FROM funcionarios);`` <br>

Esta subquery calcula a média dos salários e a consulta principal retorna os funcionários com salários acima da média.                 

2. **Subqueries de Linha Única:** Retornam uma linha de valores. Exemplo: <br>

``SELECT nome, departamento_id
FROM funcionarios
WHERE departamento_id = (SELECT departamento_id
                         FROM departamentos
                         WHERE nome = 'Vendas');`` <br>

Esta subquery encontra o departamento_id do departamento de 'Vendas' e a consulta principal retorna os funcionários desse departamento.

3. **Subqueries de Múltiplas Linhas:** Retornam múltiplas linhas. Exemplo:<br>

``SELECT nome
FROM funcionarios
WHERE departamento_id IN (SELECT departamento_id
                          FROM departamentos
                          WHERE localizacao = 'Nova York');``<br>
                          
Esta subquery retorna todos os departamento_id localizados em 'Nova York' e a consulta principal retorna os nomes dos funcionários desses departamentos.

4.**Subqueries Correlacionadas:** Dependem da consulta externa. Exemplo:<br>

``SELECT f1.nome
FROM funcionarios f1
WHERE salario > (SELECT AVG(salario)
                 FROM funcionarios f2
                 WHERE f1.departamento_id = f2.departamento_id);``<br>

Esta subquery correlacionada compara os salários dos funcionários dentro do mesmo departamento.

### Benefícios de Usar Subqueries

- **Organização:** Permitem dividir consultas complexas em partes mais gerenciáveis.<br>
- **Reutilização:** Facilitam o reuso de consultas intermediárias.<br>
- **Legibilidade:** Tornam o código SQL mais legível ao separar diferentes partes lógicas da consulta.<br>

### Exemplos Práticos

**Exemplo 1: Encontrar Produtos com Preço Acima da Média**

SELECT nome_produto, preco<br>
FROM produtos<br>
WHERE preco > (SELECT AVG(preco)<br>
               FROM produtos);<br>

Aqui, a subquery calcula a média dos preços e a consulta principal lista os produtos que têm um preço acima dessa média.<br>

**Exemplo 2: Funcionários do Mesmo Departamento com Salário Acima da Média**

SELECT nome<br>
FROM funcionarios f1<br>
WHERE salario > (SELECT AVG(salario)<br>
                 FROM funcionarios f2<br>
                 WHERE f1.departamento_id = f2.departamento_id);<br>

Neste exemplo, a subquery correlacionada calcula a média dos salários dentro de cada departamento, e a consulta principal retorna os funcionários com salários acima dessa média.


>
>As subqueries são ferramentas poderosas no SQL, permitindo a criação de consultas complexas de forma modular e organizada. Elas podem ser usadas em diversas situações, desde as mais simples até as mais complexas, proporcionando flexibilidade e eficiência na manipulação e consulta de dados em bancos de dados relacionais.














   






