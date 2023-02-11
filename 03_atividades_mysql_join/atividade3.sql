CREATE SCHEMA db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(20) NOT NULL,
prescricao BOOLEAN NOT NULL
);

# boolean -> true = 1 & false = 0


CREATE TABLE tb_produtos (
produto_id bigint AUTO_INCREMENT PRIMARY KEY,
produto_nome VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
quantidade VARCHAR(15) NOT NULL,
valor DECIMAL (8,2) NOT NULL,
categorias_id BIGINT NOT NULL,

foreign key(categorias_id) references tb_categorias(id));


INSERT INTO tb_categorias (tipo, prescricao) VALUES ('Alimento', 0);
INSERT INTO tb_categorias (tipo, prescricao) VALUES ('Cosmético', 0);
INSERT INTO tb_categorias (tipo, prescricao) VALUES ('Higiene', 0);
INSERT INTO tb_categorias (tipo, prescricao) VALUES ('Medicamento', 0);
INSERT INTO tb_categorias (tipo, prescricao) VALUES ('Medicamento', 1);


INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Dipirona Monoidratada', 'Medley', '50ml', 17.00, 4);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Dipirona Monoidratada', 'Dorflex', '10 comprimidos', 5.00, 4);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Ibuprofeno', 'Advil', '10 comprimidos', 20.00, 4);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Shampoo', 'Lolla', '500ml', 30.00, 2);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Barra de Cereal Aveia', 'Nutry', '22g', 3.00, 1);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Magnésia Bisurada', 'Pfizer', '10 pastilhas', 8.00, 4);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Sabonete Glicerina', 'Granado', '300ml', 20.00, 3);
INSERT INTO tb_produtos (produto_nome, marca, quantidade, valor, categorias_id) VALUES ('Cloridrato de Tramadol', 'Neo', '50mg', 61.00, 5);


SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor between 5.00 and 60.00;

SELECT * FROM tb_produtos WHERE produto_nome like '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categorias_id = tb_categorias.id WHERE categorias_id = 4;

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;