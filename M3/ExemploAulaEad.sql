/* 

	Relacionamento de tabelas
    Exemplo prático N:N

*/

CREATE  database aulaead;
use aulaead;

/* 
	Trabalhando com os tipos date, datetime e timestamp
	date (YYYYMMDD)
	datetime (YYYYMMDDhhmmss)
	timestamp default current_timestamp -- insere automaticamente data e hora --
	now() -- função usada para inserir data e hora atual --
*/

CREATE TABLE tbalunos(
	  idaluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (50) NOT NULL,
    fone VARCHAR (15) NOT NULL,
    nascimento DATE NOT NULL    
);

DESCRIBE tbalunos;

INSERT INTO tbalunos(nome,fone,nascimento)
VALUES 'Victor Assis','99999-1234',20030415);

INSERT INTO tbalunos(nome,fone,nascimento)
VALUES ('Sandra Moraes','99999-4321',19760522);

INSERT INTOtbalunos(nome,fone,nascimento)
VALUES ('Pedro Henrique','99999-9999',now());

SELECT * FROM tbalunos;

/*
	Para formatar uma data usamos: date_format(campo,formato)
	Formato: '%d/%m/%y' --dia, mês e ano com 2 dígitos
    Formato: '%d/%m/%Y' --dia, mês e ano com 4 dígitos
*/

SELECT nome,fone,date_format(nascimento,'%d/%m/%Y') from tbalunos;

/*
	Tipos numéricos:
	int  [aceita valores do tipo inteiro de -2147483648 a 2147483647]
    decimal(digitos,formatação)  [valores numéricos não inteiros] 
    decimal(10,2)  [aceita números de até 10 dígitos com 2 casas decimais]
    Observação: O insert do tipo decimal deve ser com ponto (.)
*/

CREATE TABLE tbcursos(
	idcurso INT PRIMARY KEY AUTO_INCREMENT,
    curso VARCHAR (50) NOT NULL,
    horas INT NOT NULL,
    valor decimal(10,2)
);

DESCRIBE tbcursos;

INSERT INTO tbcursos(curso,horas,valor)
VALUES('Java',80,350);

INSERT INTO  tbcursos(curso,horas,valor)
VALUES('Linux',40,95.5);

INSERT INTO tbcursos(curso,horas)
VALUES('HTML5',20);

INSERT INTO  tbcursos(curso,horas,valor)
VALUES('Python',40,120);

SELECT  * FROM tbcursos;

/* Criando uma tabela de associação entre alunos e cursos (N:N) */
CREATE TABLE  tbmatriculas(
	idmatricula INT PRIMARY KEY AUTO_INCREMENT,
    datamat timestamp  DEFAULT CURRENT_TIMESTAMP,
    idaluno INT NOT NULL,
    idcurso INT NOT NULL,
  FOREIGN KEY(idaluno) REFERENCES tbalunos(idaluno),
  FOREIGN KEY(idcurso) REFERENCES tbcursos(idcurso)
);

DESCRIBE tbmatriculas;

/* gerar também o modelo ER para visualizar o relacionamento */

/* Efetuando matrículas */

INSERT INTO tbmatriculas(idaluno,idcurso) VALUES(1,1);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (1,2);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (2,3);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (2,4);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (3,1);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (3,2);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (3,3);
INSERT INTO  tbmatriculas(idaluno,idcurso) VALUES (3,4);

SELECT * FROM tbmatriculas;

/* Criando relatórios personalizados */

-- Unindo todos os dados das tabelas
SELECT  * FROM  tbmatriculas
INNER JOIN tbalunos
ON tbmatriculas.idaluno = tbalunos.idaluno
INNER JOIN tbcursos
ON tbmatriculas.idcurso = tbcursos.idcurso;

-- Selecionando determinados campos das tabelas
-- M,A,C são apelidos usados para simplificar o comando

SELECT 
M.idmatricula AS Matrícula,
A.nome AS aluno,
C.curso,valor
FROM tbmatriculas AS M
INNER JOIN tbalunos AS A
ON  (M.idaluno = A.idaluno)
INNER JOIN tbcursos AS C
ON (M.idcurso = C.idcurso);

-- Somando o total de venda dos cursos
SELECT sum(valor) AS Total FROM tbcursos;
