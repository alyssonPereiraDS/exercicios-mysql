CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    nome varchar(30) NOT NULL,
    descricao varchar(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome, descricao) VALUES("Doce", "pizzas doces");
INSERT INTO tb_categorias(nome, descricao) VALUES("Vegana", "pizzas veganas");
INSERT INTO tb_categorias(nome, descricao) VALUES("Vegetariana", "pizzas vegetarianas");
INSERT INTO tb_categorias(nome, descricao) VALUES("Mista", "pizzas mistas");
INSERT INTO tb_categorias(nome, descricao) VALUES("Clássica", "pizzas clássicas");

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(30) NOT NULL,
    preco decimal(8,2),
    qt_fatias tinyint,
    recheios varchar(255),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Calabresa Cabulosa", 35, 12, "muita calabresa",5);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("4 Queijos", 50, 12, "4 queijos kkkk",5);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Pizza de Mato", 55, 12, "salada, sem queijo e massa vegana",2);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Pizza de Mato com queijo", 70, 12, "salada e queijo",3);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Calabresa e Carne Moida", 48, 12, "calabresa, queijo e carne moida",4);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Explosão de Chocolate", 80, 24, "chocolate",1);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Explosão de Chocolate Branco", 85, 24, "chocolate branco",1);
INSERT INTO tb_pizzas(nome, preco, qt_fatias, recheios, categoria_id) VALUES ("Explosão de Morango", 65, 12, "morango",1);

SELECT * FROM tb_pizzas;
SELECT id, nome, preco FROM tb_pizzas WHERE preco > 45;
SELECT id, nome, preco FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT id, nome, preco FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.id, tb_pizzas.nome, preco, tb_categorias.nome AS tipo_da_pizza FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id=tb_pizzas.categoria_id ORDER BY id;
SELECT tb_pizzas.id, tb_pizzas.nome, preco, tb_categorias.nome AS tipo_da_pizza FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id=tb_pizzas.categoria_id WHERE categoria_id=1 ORDER BY preco DESC;