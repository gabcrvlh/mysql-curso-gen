CREATE SCHEMA db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(20) NOT NULL,
organico BOOLEAN NOT NULL
);

# boolean -> true = 1 & false = 0


CREATE TABLE tb_produtos (
produto_id bigint AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
origem VARCHAR(50) NOT NULL,
valor_kg DECIMAL (8,2) NOT NULL,
categorias_id BIGINT NOT NULL,

foreign key(categorias_id) references tb_categorias(id));


INSERT INTO tb_categorias (tipo, organico) VALUES ('Fruta', 0); 
INSERT INTO tb_categorias (tipo, organico) VALUES ('Fruta', 1); 
INSERT INTO tb_categorias (tipo, organico) VALUES ('Legume', 0); 
INSERT INTO tb_categorias (tipo, organico) VALUES ('Legume', 1); 
INSERT INTO tb_categorias (tipo, organico) VALUES ('Verdura', 0); 
INSERT INTO tb_categorias (tipo, organico) VALUES ('Verdura', 1);


INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Alface', 'Fazenda A', 5.00, 5);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Abacate', 'Fazenda B', 16.00, 2);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Banana', 'Fazenda C', 10.00, 1);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Chuchu', 'Sitio A', 3.00, 3);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Berinjela', 'Sitio B', 6.00, 4);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Agrião', 'Sitio C', 3.00, 5);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Rucula', 'Campo A', 5.00, 6);
INSERT INTO tb_produtos (nome, origem, valor_kg, categorias_id) VALUES ('Jaca', 'Campo B', 4.00, 2);


SELECT * FROM tb_produtos WHERE valor_kg > 50.00;

SELECT * FROM tb_produtos WHERE valor_kg > 5.00;

SELECT * FROM tb_produtos WHERE valor_kg between 50.00 and 150.00;

SELECT * FROM tb_produtos WHERE valor_kg between 5.00 and 15.00;

SELECT * FROM tb_produtos WHERE nome like '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categorias_id = tb_categorias.id WHERE categorias_id = 6;

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;