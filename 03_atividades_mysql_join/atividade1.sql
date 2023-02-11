CREATE SCHEMA db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(30) NOT NULL
);

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
classe_id bigint NOT NULL,

foreign key(classe_id) references tb_classes(id));


INSERT INTO tb_classes (tipo) VALUES ('Arqueiro');
INSERT INTO tb_classes (tipo) VALUES ('Bruxo');
INSERT INTO tb_classes (tipo) VALUES ('Caçador');
INSERT INTO tb_classes (tipo) VALUES ('Gladiadores');
INSERT INTO tb_classes (tipo) VALUES ('Mercenários');

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Alfarr', 5000, 2500, 1);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Balthazar', 4000, 4800, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Orion', 4700, 4500, 3);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Garrido', 3000, 1800, 4);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Frederick', 3800, 3800, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Argos', 4600, 1500, 1);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Severus', 2300, 1300, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ('Theron', 1000, 1000, 3);


SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa between 1000 and 2000;

SELECT * FROM tb_personagens WHERE nome like '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes on classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes on classe_id = tb_classes.id WHERE classe_id = 2;

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;