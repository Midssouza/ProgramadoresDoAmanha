USE SAKILA;

SELECT 
    s.first_name AS "Nome do Funcionário",
    s.last_name AS "Sobrenome do Funcionário",
    f.title AS "Título do Filme Recomendado",
    f.release_year AS "Ano de Lançamento do Filme Recomendado"
FROM rental r
JOIN staff s ON r.staff_id = s.staff_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
ORDER BY s.first_name, s.last_name, f.title;
