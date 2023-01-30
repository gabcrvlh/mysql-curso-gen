CREATE SCHEMA db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos (
id bigint AUTO_INCREMENT PRIMARY KEY,
produto VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
valor DECIMAL (8,2) NOT NULL,
categoria VARCHAR(20)
);

INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Algodão', 'Cott-on', '3.50', 'Higiene');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Biscoito', 'Choco', '4.00', 'Alimento');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Cachaça', 'Drink', '520.00', 'Bebida');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Detergente', 'Limpax', '2.50', 'Limpeza');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Escova de Dentes', 'Sorridente', '10.00', 'Higiene');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Farinha de Trigo', 'FarTri', '5.00', 'Alimento');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Gelatina', 'Colag', '3.50', 'Alimento');
INSERT INTO produtos (produto, marca, valor, categoria) VALUES ('Homus', 'GDB', '31.00', 'Alimento');


SELECT * FROM produtos WHERE valor > 500.00;

SELECT * FROM produtos WHERE valor < 500.00;

UPDATE produtos SET valor = "18.00" WHERE id = 8;

SELECT * FROM produtos;
