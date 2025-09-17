CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

INSERT INTO tb_colaboradores (nome_completo, cargo, departamento, salario)
VALUES ('Ana Silva', 'Analista de RH', 'RH', 4200.00);

INSERT INTO tb_colaboradores (nome_completo, cargo, departamento, salario)
VALUES ('Bruna Felix', 'Desenvolvedor Backend', 'TI', 10000.50);

INSERT INTO tb_colaboradores (nome_completo, cargo, departamento, salario)
VALUES ('Camila Maria', 'Coordenadora de Marketing', 'Marketing', 3950.00);

INSERT INTO tb_colaboradores (nome_completo, cargo, departamento, salario)
VALUES ('Diego Ramos', 'Auxiliar Administrativo', 'Administrativo', 1700.00);

INSERT INTO tb_colaboradores (nome_completo, cargo, departamento, salario)
VALUES ('Elisa Marques', 'Designer Gráfico', 'Design', 2100.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3800.00 WHERE id = 3;

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores ORDER BY nome, departamento;







