CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(50) NOT NULL,
    corredor tinyint NOT NULL,
    PRIMARY KEY (id)
    
);
INSERT INTO tb_categorias(tipo, corredor) VALUES("Carne Bovina", 1);
INSERT INTO tb_categorias(tipo, corredor) VALUES("Carne Branca", 2);
INSERT INTO tb_categorias(tipo, corredor) VALUES("Carne Suína", 3);
INSERT INTO tb_categorias(tipo, corredor) VALUES("Miúdos", 4);
INSERT INTO tb_categorias(tipo, corredor) VALUES("Derivados", 5);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(50) NOT NULL,
    preco_por_KG decimal(8,2) NOT NULL,
    dt_validade date NOT NULL,
    quantidade decimal(8,2),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("COXA DE FRANGO",30,"2022-11-25",500,2);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("ASA DE FRANGO",25,"2022-11-25",300,2);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("PETISCO DE FRANGO",20,"2022-11-25",100,4);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("COSTELA DE BOI",55,"2022-11-30",100,1);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("PICANHA",60,"2022-11-30",700,1);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("FÍGADO DE BOI",30,"2022-11-27",50,4);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("PRESUNTO DE FRANGO",15,"2022-11-23",300,5);
INSERT INTO tb_produtos(nome, preco_por_KG, dt_validade, quantidade, categoria_id) VALUES ("MORTADELA MISTA",10,"2022-11-23",200,5);

SELECT * FROM tb_produtos;
SELECT id, nome, preco_por_KG FROM tb_produtos WHERE preco_por_KG > 50 ORDER BY preco_por_KG DESC;
SELECT id, nome, preco_por_KG FROM tb_produtos WHERE preco_por_KG BETWEEN 50 AND 150 ORDER BY preco_por_KG DESC;
SELECT id, nome, preco_por_KG FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.id, nome, preco_por_KG, tb_categorias.tipo AS Tipo_da_Carne, corredor FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id ORDER BY id;
SELECT tb_produtos.id, nome, preco_por_KG, tb_categorias.tipo AS Tipo_da_Carne, corredor FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 5 ORDER BY id;