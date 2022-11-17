CREATE DATABASE db_rh;

USE db_rh;


CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) NOT NULL,
    idade int NOT NULL,
    salario decimal(6,2) NOT NULL,
    cargo varchar(255) NOT NULL,
    setor varchar(255) NOT NULL,
    PRIMARY KEY (id)
    

    
    

);
INSERT INTO tb_colaboradores(nome, idade, salario, cargo,setor) VALUES (
	"Jõao Carlos da Silva",
    32,
    1500,
    "Vendedor",
    "Vendas"


);
INSERT INTO tb_colaboradores(nome, idade, salario, cargo,setor) VALUES (
	"Larissa Soares",
    45,
    3500,
    "Gerente de Vendas",
    "Vendas"


);
INSERT INTO tb_colaboradores(nome, idade, salario, cargo,setor) VALUES (
	"Jose Alysson",
    21,
    5000,
    "CTO",
    "TI"


);
INSERT INTO tb_colaboradores(nome, idade, salario, cargo,setor) VALUES (
	"Luzia Josefa",
    56,
    7000,
    "CEO",
    "Adiministrativo"


);
SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;
SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET idade =22 WHERE id =3;



