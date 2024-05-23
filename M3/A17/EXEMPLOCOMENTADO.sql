 select 
-- é usada para especificar as colunas que queremos retornar na nossa consulta. 
	customer.first_name AS Nome, 
-- Seleciona a coluna first_name da tabela customer e a renomeia para Nome.

	customer.last_name AS Sobrenome,
-- Seleciona a coluna last_name da tabela customer e a renomeia para Sobrenome.

         rental.rental_date As  DataDoAluguel,
--Seleciona a coluna rental_date da tabela rental e a renomeia para DataDoAluguel.

         rental.return_date AS DataDeDevolução
--Seleciona a coluna return_date da tabela rental e a renomeia para DataDeDevolução.

  
--A cláusula FROM especifica a tabela principal da consulta, que neste caso é a tabela customer.
	from 
 	 customer 
 
--A cláusula INNER JOIN é usada para combinar registros de duas ou mais tabelas com base em uma condição relacionada.
  
	inner join
--: Especifica que estamos juntando a tabela customer com a tabela rental.


   rental on customer.customer_id = rental.customer_id; 
-- Define a condição de junção, onde customer.customer_id deve ser igual a rental.customer_id.
