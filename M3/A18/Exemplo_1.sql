CREATE DATABASE ESTOQUE;

USE ESTOQUE;

CREATE TABLE cliente(
id int primary key auto_increment,
nome varchar (100)

);

CREATE TABLE pedido(
id_cliente int ,
data_pedido  date

);

INSERT INTO cliente (nome) VALUES ('João'), ('Maria'), ('Pedro'), ('Ana');

INSERT INTO pedido (id_cliente, data_pedido) VALUES ( 1, '2023-05-01'), (2,'2023-05-02'), (3,'2023-06-01');
INSERT INTO pedido (id_cliente, data_pedido) VALUES(1,'2023-06-01');

/*Usando o Left Join*/
SELECT cliente.id, cliente.nome, pedido.data_pedido
FROM cliente
LEFT JOIN pedido
ON cliente.id = pedido.id_cliente;
