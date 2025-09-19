CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL,
habilidade VARCHAR(255) NOT NULL
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
poder_ataque DECIMAL(19),
poder_defesa DECIMAL(19),
nivel DECIMAL(19), 
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes (categoria, habilidade) 
VALUES  ('Ninja', 'Agilidade'),
	    ('Feiticeiro', 'Magia'),
        ('deus-Ancião', 'Força Divina'),
		('Ciborque', 'Tecnologia'),
		('Monge-Guerreiro', 'Poder Espiritual');
        
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) 
VALUES  ('Scorpion', 2500, 1500, 10, 1),
		('Sub-Zero', 2300, 1600, 10, 1),
		('Raiden', 3000, 2000, 12, 3),
		('Liu Kang', 2200, 1400, 9, 5),
		('Shang Tsung', 2700, 1700, 11, 2),
		('Kung Lao', 2100, 1300, 8, 5),
		('Cyrax', 1900, 1200, 7, 4),
		('Jax Briggs', 3200, 1800, 12, 4);
        
SELECT * FROM tb_personagens;
        
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_classes.categoria
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id_personagem, tb_personagens.nome, tb_personagens.poder_ataque, 
tb_personagens.poder_defesa, tb_personagens.nivel, tb_classes.categoria
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.categoria = "Ninja";








