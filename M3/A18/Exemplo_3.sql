CREATE DATABASE Alunos;
use Alunos;

-- Tabela 1: Alunos_2023
CREATE TABLE alunos_2023 (
ID INT primary key auto_increment,
Nome VARCHAR(100),
curso VARCHAR(100)
);

-- Tabela 2:  Alunos_2024
CREATE TABLE alunos_2024 (
ID INT  primary key auto_increment,
Nome VARCHAR(100),
curso VARCHAR(100)
);

-- Inserindo dados nas tabelas
INSERT INTO alunos_2023 (Nome, curso) VALUES
('João', 'História'),
( 'Maria', 'Matemática');

INSERT INTO alunos_2024 (Nome, curso) VALUES
('Ana ', 'Quimica'),
( 'Maria', 'Matemática');

/*Usando o UNION  */
SELECT nome, curso
FROM alunos_2023
UNION
SELECT nome, curso
FROM alunos_2024;


/*Usando UNION ALL*/
SELECT nome, curso
FROM alunos_2023
UNION ALL
SELECT nome, curso
FROM alunos_2024;


