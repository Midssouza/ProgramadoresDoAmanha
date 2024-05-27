SELECT -- especifica as colunas que quero selecionar e exibir dos dados.

    actor.first_name, actor.last_name, film.title  
-- actor.first_name,  Seleciona a coluna first_name da tabela actor. 
  actor.last_name, Seleciona a coluna last_name da tabela actor. 
  film.title Seleciona a coluna title da tabela film. 

FROM
actor
-- Especifica que a consulta começará a partir da tabela actor.
	
    LEFT JOIN
film_actor ON actor.actor_id = film_actor.actor_id
/*--LEFT JOIN film_actor Faz um join (junção) da tabela actor com a tabela film_actor utilizando um LEFT JOIN. 
Um LEFT JOIN retorna todos os registros da tabela à esquerda (actor), e os registros correspondentes da 
tabela à direita (film_actor). Se não houver correspondência, os resultados da tabela à direita (film_actor)
 serão NULL.
-- ON actor.actor_id = film_actor.actor_id Especifica a condição de junção, que é onde o actor_id da 
tabela actor é igual ao actor_id da tabela film_actor.*/

	LEFT JOIN
film ON film_actor.film_id = film.film_id;
/*--LEFT JOIN film: Faz um join (junção) da tabela film_actor com a tabela film utilizando um LEFT JOIN. Novamente,
um LEFT JOIN retorna todos os registros da tabela à esquerda (film_actor), e os registros correspondentes da 
tabela à direita (film). Se não houver correspondência, os resultados da tabela à direita (film) serão NULL.
--ON film_actor.film_id = film.film_id: Especifica a condição de junção, que é onde o film_id da tabela film_actor é igual ao film_id da tabela film.*/
