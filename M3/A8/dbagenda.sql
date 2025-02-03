
/* CRIANDO BANCO DE DADOS */
create database dbagenda; -- Cria um banco de dados chamado "dbagenda --

/*USANDO O BANCO DE DADOS */
use dbagenda; -- Define o banco de dados "dbagenda" como o banco de dados atual.

/*CRIANDO TABELA */
create table contatos(
  idcon int primary key auto_increment,
  nome varchar(50) not null,
  fone varchar(15) not null,
  email varchar(50)
); -- Cria uma tabela chamada "contatos" com quatro colunas: "idcon" (chave primária auto_incrementável), "nome", "fone" e "email".

/* CRUD (CREATE READ UPDATE DELETE) */

/* CRUD CREATE */

-- inserindo registros (dados) na tabela
insert into contatos(nome,fone,email)
values('José de Assis','99999-1234','ze@email.com'); 
-- Insere um registro na tabela "contatos" com os valores 'José de Assis', '99999-1234' e 'ze@email.com' nas colunas "nome", "fone" e "email", respectivamente 

insert into contatos(nome,fone,email)
values('Bill Gates','88888-1234','bill@email.com');

insert into contatos(nome,fone,email)
values('Linus','99999-4321','tux@email.com');

insert into contatos(nome,fone,email)
values('Bruna Marquezine','3333-3333','bruna@email.com');

insert into contatos(nome,fone)
values('Bruce Dickinson','6666-6666');

insert into contatos(nome,fone,email)
values('Tony Stark','5555-5555','ironman@email.com');

/* CRUD READ */

-- selecionando todos os registros da tabela Consulta de todos os contatos
select * from contatos; -- Retorna todos os registros da tabela "contatos".

-- selecionando registros de acordo com um critério Consulta de um contato específico pelo ID:
select * from contatos where idcon = 1; 

-- Consulta de um contato específico pelo nome
select * from contatos where nome = 'Bill Gates';
 
 -- Consulta de contatos cujos nomes começam com 'B':
select * from contatos where nome like 'B%';


-- selecionar por ordem alfabética (asc ou desc) Consulta ordenada por nome ascendente
select * from contatos order by nome asc;

-- selecionar campos específicos da tabela -- Consulta de apenas nome e telefone dos contatos
select nome,fone from contatos; -- Retorna apenas as colunas "nome" e "fone" da tabela "contatos".

-- criando 'apelidos' para os campos da tabela Consulta renomeando as colunas
select nome as Contato, fone as Telefone, email as Email from contatos; 
-- Retorna todos os registros da tabela "contatos", renomeando as colunas "nome", "fone" e "email" para "Contato", "Telefone" e "Email", respectivamente.

/* CRUD UPDATE */

-- alterando registros (dados) na tabela Atualização de um registro
update contatos set nome='Willian Gates' where idcon = 2;
update contatos set email='maidem@email.com' where idcon = 5;
update contatos set nome='Linus Torvalds',fone='99999-7777',email='linus@email.com' where idcon = 3;

/* CRUD DELETE */

-- removendo um registro da tabela -- Exclusão de um registro
delete from contatos where idcon = 6;