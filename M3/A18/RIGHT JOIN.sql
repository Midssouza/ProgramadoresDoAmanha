
use sakila;
SELECT 
film.title, category.name

FROM
film
	
	RIGHT JOIN	
film_category ON film.film_id = film_category.film_id

	RIGHT JOIN	
category ON film_category.category_id = category.category_id;