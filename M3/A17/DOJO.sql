USE SAKILA;

SELECT 
    staff.first_name AS Nome,
    staff.last_name AS Sobrenome,
    film.title AS TituloDoFilmeRecomendado,
    film.release_year AS AnoDeLancamentoDoFilmeRecomendado
FROM 
    staff
INNER JOIN 
    film ON staff.staff_id = film.film_id;

