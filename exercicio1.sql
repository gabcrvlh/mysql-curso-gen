CREATE SCHEMA db_empresa_rh;

USE db_empresa_rh;

CREATE TABLE colaboradores(
id bigint AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
salario DECIMAL (8,2) NOT NULL,
cargo VARCHAR(50) NOT NULL,
setor VARCHAR(30)
);

INSERT INTO colaboradores (nome, salario, cargo, setor) VALUES ('Ana', '40163.52', 'Gerente', 'Imobiliário');
INSERT INTO colaboradores (nome, salario, cargo, setor) VALUES ('Bruno', '5000.00', 'Analista Jr', 'Cartões');
INSERT INTO colaboradores (nome, salario, cargo, setor) VALUES ('Carlos', '1800.00', 'Estagiário', 'Consórcio');
INSERT INTO colaboradores (nome, salario, cargo, setor) VALUES ('Diana', '12000.00', 'Analista Sr', 'RH');
INSERT INTO colaboradores (nome, salario, cargo, setor) VALUES ('Eliane', '16000.00', 'Coordenador', 'Vendas');

SELECT * FROM colaboradores WHERE salario > 2000.00;

SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET cargo = "Analista Pl" WHERE id = 2;

SELECT * FROM colaboradores;
