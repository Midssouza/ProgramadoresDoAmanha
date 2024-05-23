# INNER JOIN


*INNER JOIN*  é uma cláusula SQL usada para combinar registros de duas ou mais tabelas com base em uma condição relacionada. A junção interna (inner join) retorna apenas os registros que possuem valores correspondentes nas duas tabelas.

### Como Funciona
Quando usamos INNER JOIN, estamos dizendo ao banco de dados para encontrar e retornar apenas os registros onde há correspondência em ambas as tabelas com base na condição especificada. Se não houver correspondência, esses registros não serão incluídos no resultado.

## Estrutura Básica do INNER JOIN

SELECT tabela1.coluna1, tabela2.coluna2, ...<br>
FROM tabela1<br>
INNER JOIN tabela2 ON tabela1.coluna_comum = tabela2.coluna_comum;<br>

- **SELECT:** Especifica as colunas que queremos exibir no resultado.<br>
- **FROM tabela1:** Especifica a tabela principal.<br>
- **INNER JOIN tabela2:** Junta a tabela principal (tabela1) com a segunda tabela (tabela2).<br>
- **ON tabela1.coluna_comum = tabela2.coluna_comum:** Define a condição de junção. A junção será feita onde os valores da coluna_comum forem iguais em ambas as tabelas.<br>

 ### Exemplo 
Vamos usar um exemplo simples para ilustrar o uso do INNER JOIN. Imagine que temos duas tabelas em uma base de dados de uma locadora de filmes:

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/80395490-f367-412e-9cc7-2ae0ea928f94)


Queremos combinar essas duas tabelas para obter uma lista dos aluguéis com o nome dos clientes. Usamos um INNER JOIN assim:<br>

SELECT customer.first_name,<br>
       customer.last_name,<br>
       rental.rental_date,<br> 
       rental.return_date<br>
FROM customer<br>
INNER JOIN rental ON customer.customer_id = rental.customer_id;<br>

#### Resultado da Consulta
O resultado será uma tabela combinada que mostra apenas os registros onde há correspondência entre customer_id nas duas tabelas:

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/b344734a-b623-41b2-aba9-6dff7a8984e7)

## Pontos Importantes
Correspondência Obrigatória: O INNER JOIN retorna apenas os registros que têm correspondência em ambas as tabelas. <br>
Se um cliente não tiver um aluguel correspondente, ou se um aluguel não tiver um cliente correspondente, esses registros não aparecerão no resultado.

## Conclusão
O INNER JOIN é uma ferramenta poderosa para combinar dados relacionados de diferentes tabelas, permitindo-nos criar consultas complexas e extrair informações 
significativas de um banco de dados. Entender como e quando usá-lo é fundamental para trabalhar eficientemente com SQL.integridade referencial entre as tabelas.
