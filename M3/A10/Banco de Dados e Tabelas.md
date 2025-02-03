# Comandos de Manipulação de Banco de Dados e Tabelas no MySQL

## 1. Introdução
Vamos explorar os comandos fundamentais para a criação e manipulação de bancos de dados e tabelas no MySQL. Abordaremos os seguintes comandos:

* **DATABASE:** CREATE, USE, DROP

* **TABLE:** CREATE, DROP, TRUNCATE, ALTER

## 2. Comandos para Banco de Dados

#### 2.1 Criando um banco de Dados (CREATE DATABASE)

O comando **CREATE DATABASE** é utilizado para criar um novo banco de dados.

![image](https://github.com/user-attachments/assets/6d534c08-be23-4b85-b377-5becb7c36a15)

Exemplo:

![image](https://github.com/user-attachments/assets/edf61a3e-cbb2-4d1e-9756-04e5f0d0b093)

isso criará um banco de dados chamado **loja_virtual**.

#### 2.2 Selecionando um Bando de Dados (USE).

Para utilizar um banco de dados criado, usamos o comando **USE**.

![image](https://github.com/user-attachments/assets/20e0d6ed-121b-4ceb-91fc-69a6459b6e74)

Exemplo:

![image](https://github.com/user-attachments/assets/f3bba377-8ca4-4346-b48a-b6798788a02d)

Agora todas as operações serão feitas dentro do banxo de dados **loja_virtual**.

#### 2.3 Removendo um Banco de Dados (DROP DATABASE)

Para excluir um banco de dados, utilizamos o comando **DROP DATABASE**. ** Atenção : Este comando remove todos os dados e não pode sr desfeito!**

![image](https://github.com/user-attachments/assets/168683c1-4fb3-4fb1-8a5b-0ccfcf0850a3)

Exemplo:

![image](https://github.com/user-attachments/assets/baadbdcf-7424-48f4-b46f-8a3d70fcfbf8)

Esse comando escluirá o banco de dados **loja_virtual** e todas as suas tabelas.


## 3. Comandos para Tabelas

#### 3.1  Criando uma tabela (CEATE TABLE)

O comando **CREATE TABLE** é utilizado para criar tabelas dentro do banco de dados.

![image](https://github.com/user-attachments/assets/25e2d211-d5b7-4c87-9973-c3992b020671)


Exmeplo:

![image](https://github.com/user-attachments/assets/1df7414c-2ed9-4977-9d45-bbf3b80055d6)

Isso criará a tabela **produtos** com as colunas **id**, **nome**, **preco** e **estoque**.

#### 3.2 Excluindo uma Table (DROP TABLE)

o comando **DROP TABEL** remove um tabela e todos os seus dados permanentemente.

![image](https://github.com/user-attachments/assets/7151fe4c-df94-483b-9866-4601154b7c94)


Exemplo:

![image](https://github.com/user-attachments/assets/132fc556-65dd-464b-8401-d850392cb7a7)

Isso excuirá a tabela **produto** do banco de dados.

#### 3.3 Esvaziando uma Tabela (TRUNCATE TABLE)

O comando **TRUNCATE TABLE** remove todos os registros de uma tabela, mas mantém sua estrutura.

![image](https://github.com/user-attachments/assets/51cd4ec4-7129-4347-8917-3916dc1a851b)

Exemplo:

![image](https://github.com/user-attachments/assets/9622a1c8-adbc-45d5-9bbc-4ba1cfadd931)

Isso removerá todos os dados da tabela **produtos**, mas ela continuará existindo.

#### 3.4 Modificando uma Tabela (ALTER TABLE)

O comando **ALTER TABLE** é usado para modificar a estrutura de uma tabela existente.

**Adicionar uma nova coluna**

![image](https://github.com/user-attachments/assets/399fbea8-e1b8-48d2-82c0-a57edc2c3a74)


**Modificar uma coluna existente:**

![image](https://github.com/user-attachments/assets/7e73ff56-2790-4a7b-bc72-c38a63fc6a80)


**Remover uma coluna:**

![image](https://github.com/user-attachments/assets/e703aca5-5f85-45fa-bb3a-a2fcbcd73a96)








