CREATE DATABASE db_alunos;
USE db_alunos;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
    nome varchar(255) NOT NULL,
    idade tinyint NOT NULL,
    matricula int NOT NULL,
    nota tinyint,
    PRIMARY KEY (id)
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"PEDRO",
    15,
    6546321,
    5
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"CARLOS",
    17,
    3014245,
    8
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"JOSE",
    13,
    1125420,
    10
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"MATHEUS",
    16,
    7416412,
    6
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"TADEU",
    15,
    1021230,
    7
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"MATIAS",
    13,
    8758202,
    6
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"JÕAO",
    15,
    2144200,
    7.8
);
INSERT INTO tb_alunos(nome, idade, matricula, nota) VALUES(
	"VINICIUS",
    15,
    214164730,
    10
);
SELECT * FROM tb_alunos;
SELECT id, nome, matricula, nota FROM tb_alunos WHERE nota > 7;
SELECT id, nome, matricula, nota FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota=10 WHERE id=1;

