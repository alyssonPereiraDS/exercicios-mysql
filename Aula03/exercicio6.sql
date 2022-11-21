CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(100),
	ativa BOOLEAN,
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Programação", 1);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Idiomas", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Gestão", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Ferramentas de escritório", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Marketing", true);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
descricao VARCHAR(200),
turno VARCHAR(50),
preco DECIMAL(8,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Java iniciante", "curso básico", "noturno", 700, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Inglês básico", "curso introdutório", "noturno", 300, 2);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Metodologia SCRUM", "metodologia ágil", "matutino", 800, 3);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Pacote office", "básico do office", "matutino", 500, 4);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Vendas", "melhorar vendas", "noturno", 900, 5);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Javascript iniciante", "curso básico", "vespertino", 600, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Espanhol básico", "curso introdutório", "integral", 250, 2);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("SQL básico", "curso básico", "matutino", 700, 1);

SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT tb_cursos.id, tb_cursos.nome, preco, tb_categorias.nome AS Categoria FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id= tb_categorias.id ORDER BY preco DESC;
SELECT tb_cursos.id, tb_cursos.nome, preco, tb_categorias.nome AS Categoria FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id= tb_categorias.id WHERE categoria_id = 2 ORDER BY preco DESC;
