SELECT
    film.film_id,
    film.title,
    film_text.description
FROM
    film
RIGHT JOIN
    film_text
ON
    film.film_id = film_text.film_id;
