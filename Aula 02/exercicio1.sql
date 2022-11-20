CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    vida_por_level int,
    ataque_por_level int,
    defesa_por_level int,
    velocidade_por_level int,
    tipo_arma varchar(30),
    descricao varchar(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_classes(vida_por_level, ataque_por_level, defesa_por_level, velocidade_por_level, tipo_arma, descricao) VALUES(200, 50, 200, 30, "Espada pesada e escudo", "Guerreiros");
INSERT INTO tb_classes(vida_por_level, ataque_por_level, defesa_por_level, velocidade_por_level, tipo_arma, descricao) VALUES (100, 100, 50, 80, "Espada Leve", "Guerreiros Leves");
INSERT INTO tb_classes(vida_por_level, ataque_por_level, defesa_por_level, velocidade_por_level, tipo_arma, descricao) VALUES (30, 150, 30, 80, "Arco e Flecha", "Arqueiros");
INSERT INTO tb_classes(vida_por_level, ataque_por_level, defesa_por_level, velocidade_por_level, tipo_arma, descricao) VALUES (50, 200, 50, 100, "Lâmina Furtiva", "Assassinos");
INSERT INTO tb_classes(vida_por_level, ataque_por_level, defesa_por_level, velocidade_por_level, tipo_arma, descricao) VALUES (50, 150, 30, 80, "Cajado", "Magos");

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(30) NOT NULL,
    vida_base int,
    ataque_base int,
    defesa_base int,
    velocidade_base int,
    classe_id bigint,
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Guerreiro do Ceú", 4000, 500, 2000, 300, 1);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Guerreiro Veloz", 2000, 800, 1500, 500, 2);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Robin Hood", 1000, 2000, 500, 1000, 3);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Arqueiro Verde", 1000, 2000, 500, 1000, 3);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Gavião Arqueiro", 1000, 2000, 500, 1000, 3);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Deathstroke", 1500, 2500, 1000, 1500, 4);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Mestre dos Magos", 2000, 2000, 500, 1000, 5);
INSERT INTO tb_personagens(nome, vida_base, ataque_base, defesa_base, velocidade_base, classe_id) VALUES("Gandalf", 1000, 2000, 500, 1000, 5);


SELECT id, nome, ataque_base FROM tb_personagens WHERE ataque_base > 2000;
SELECT id, nome, defesa_base FROM tb_personagens WHERE defesa_base BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens  WHERE nome Like "%c%";

SELECT tb_personagens.id, nome, tb_classes.descricao AS Classe_do_Personagem FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id=tb_personagens.classe_id;
SELECT tb_personagens.id, nome, tb_classes.descricao AS Classe_do_Personagem FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id=tb_personagens.classe_id WHERE tb_personagens.classe_id=3;
