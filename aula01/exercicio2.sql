CREATE DATABASE db_ecomerce;

USE db_ecomerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal (8,2),
    categoria varchar(255),
    quantidade_estoque int,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Cadeira Gamer",
    1017,
    "Escritório",
    5
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"PC GAMER",
    7000,
    "Eletrônicos",
    10
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Teclado",
    700,
    "Periféricos",
    30
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Tapete",
    130,
    "Decoração",
    1
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Headset",
    570,
	"Perifericos",
    8
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"GTA V",
    570,
	"Jogo Eletrônico",
    "999"
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Televisão",
    3000,
	"Eletrônicos",
    50
    
);
INSERT INTO tb_produtos(nome, preco, categoria, quantidade_estoque) VALUES(
	"Geladeira",
    2900,
	"Eletrodomésticos",
    100
    
);
SELECT nome, preco FROM tb_produtos WHERE preco > 500;
SELECT nome, preco FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET  quantidade_estoque=500 WHERE id =1;
SELECT * FROM tb_produtos;