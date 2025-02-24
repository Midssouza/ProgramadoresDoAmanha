-- Seleciona o banco de dados Sakila para garantir que as tabelas referenciadas sejam acessadas corretamente.
USE sakila;

-- Seleciona as colunas desejadas para exibição.
SELECT 
    s.first_name AS "Nome do Funcionário",  -- Nome do funcionário que processou o aluguel
    s.last_name AS "Sobrenome do Funcionário",  -- Sobrenome do funcionário
    f.title AS "Título do Filme Recomendado",  -- Título do filme alugado (recomendado indiretamente pelo funcionário)
    f.release_year AS "Ano de Lançamento do Filme Recomendado"  -- Ano de lançamento do filme

-- Define a tabela principal da consulta: a tabela de aluguéis (rental), apelidada como "r".
FROM rental r

-- Junta a tabela "staff" (funcionários), para associar o aluguel ao funcionário que o processou.
JOIN staff s ON r.staff_id = s.staff_id

-- Junta a tabela "inventory" (inventário), para relacionar os aluguéis com os filmes disponíveis.
JOIN inventory i ON r.inventory_id = i.inventory_id

-- Junta a tabela "film" (filmes), para obter os detalhes do filme alugado.
JOIN film f ON i.film_id = f.film_id

-- Ordena os resultados pelo nome do funcionário, depois pelo sobrenome e, por último, pelo título do filme.
ORDER BY s.first_name, s.last_name, f.title;

