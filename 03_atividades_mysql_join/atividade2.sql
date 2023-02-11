CREATE SCHEMA db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(10) NOT NULL,
tamanho VARCHAR(10) NOT NULL
);

CREATE TABLE tb_pizzas (
pizza_id bigint AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
ingredientes VARCHAR(100) NOT NULL,
classificacao VARCHAR(15) NOT NULL,
valor DECIMAL (5,2) NOT NULL,
categorias_id BIGINT NOT NULL,

foreign key(categorias_id) references tb_categorias(id));


INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Doce', 'Brotinho');
INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Doce', 'Média');
INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Doce', 'Grande');
INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Salgada', 'Brotinho');
INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Salgada', 'Média');
INSERT INTO tb_categorias (sabor, tamanho) VALUES ('Salgada', 'Grande');

INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Calabresa', 'Molho de Tomate, Mussarela, Calabresa, Cebola', 'Tradicional', '20.0', 4);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Portuguesa', 'Molho de Tomate, Mussarela, Presunto, Cebola, Pimentão, Ovo, Orégano', 'Tradicional', '35.0', 5);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Frango com Catupiry', 'Molho de Tomate, Mussarela, Frango, Cebola, Catupiry', 'Tradicional', '50.0', 6);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Camarão com Alho Poró', 'Molho de Tomate, Mussarela, Camarão, Alho Poró', 'Premium', '65.0', 6);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Chocolate', 'Chocolate, Granulado', 'Tradicional', '20.0', 1);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Banana com Canela', 'Banana, Açúcar, Canela', 'Tradicional', '30.0', 2);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Romeu e Julieta', 'Mussarela, Goiabada', 'Tradicional', '40.0', 3);
INSERT INTO tb_pizzas(nome, ingredientes, classificacao, valor, categorias_id) VALUES ('Chocolate com Morango', 'Chocolate, Morango', 'Tradicional', '25.0', 1);


SELECT * FROM tb_pizzas WHERE valor > 45.0;

SELECT * FROM tb_pizzas WHERE valor between 50.0 and 100.0;

SELECT * FROM tb_pizzas WHERE nome like '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on categorias_id = tb_categorias.id WHERE categorias_id = 1;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias;