CREATE SCHEMA db_escola;

USE db_escola;

CREATE TABLE estudantes (
id bigint AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(80) NOT NULL,
série VARCHAR(20) NOT NULL,
disciplina VARCHAR(20),
nota DECIMAL (4,2) NOT NULL
);

INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Alan', '1o Ano EM', 'Matemática', '3.50');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Bianca', '2o Ano EM', 'Português', '7.20');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Camila', '3o Ano EM', 'Inglês', '8.00');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Dante', '1o Ano EM', 'História', '9.70');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Eric', '2o Ano EM', 'Química', '4.10');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Fernanda', '3o Ano EM', 'Física', '6.00');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Gabriela', '1o Ano EM', 'Filosofia', '10.00');
INSERT INTO estudantes (nome_aluno, série, disciplina, nota) VALUES ('Hugo', '2o Ano EM', 'Sociologia', '6.90');

SELECT * FROM estudantes WHERE nota > 7.00;

SELECT * FROM estudantes WHERE nota < 7.00;

UPDATE estudantes SET série = "2o Ano EM" WHERE id = 1;

SELECT * FROM estudantes;