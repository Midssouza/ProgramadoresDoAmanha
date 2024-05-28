CREATE DATABASE VENDAS;

USE VENDAS;

CREATE TABLE cliente(
Cliente_id int primary key auto_increment,
nome varchar (100)

);

CREATE TABLE pedido(
Pedido_id int primary key  auto_increment ,
Cliente_id int,
Produto  varchar (200)

);

INSERT INTO cliente (nome) VALUES ('João'), ('Maria'), ('Pedro'), ('Ana');

INSERT INTO pedido (Cliente_id, Produto ) VALUES ( 1, 'Livro'), (2,'Caneta'),(3,'Caneta'),(4,'Caderno'), (5,'Caderno');


/*Usando o RIGHT Join*/
SELECT cliente.Cliente_id, cliente.nome, pedido.Pedido_id, pedido.Produto
FROM cliente
RIGHT JOIN pedido
ON cliente.Cliente_id = pedido.Cliente_id;
