-- Atividade 3

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1),
    turma VARCHAR (255),
    idade INT
);

INSERT INTO tb_alunos (nome, nota, turma, idade) VALUES
('Ana Silva', 8.5, 'T1', 10),
('Bruno Costa', 6.5, 'T2', 12),
('Camila Pereira', 7.0, 'T3', 16),
('Diego Ramos', 5.0, 'T4', 17),
('Maria Brito', 5.0, 'T4', 17),
('Rafel Campos', 5.0, 'T4', 17),
('Katarina Fernandes', 5.0, 'T4', 17),
('Elisa Marques', 10.0, 'T5', 14);

SELECT * FROM tb_alunos where nota > 7.0;

SELECT * FROM tb_alunos where nota < 7.0;

UPDATE tb_alunos SET nota = 8.5 WHERE id = 6;

SELECT * FROM tb_alunos;

