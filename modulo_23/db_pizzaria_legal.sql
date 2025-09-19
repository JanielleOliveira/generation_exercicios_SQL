CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES
('Tradicional', 'Os sabores clássicos que todo mundo adora.'),
('Premium', 'Combinações especiais e ingredientes selecionados.'),
('Vegana', 'Receitas sem ingredientes de origem animal, cheias de sabor.'),
('Especial da Casa','Sabores exclusivos criados pelos nossos pizzaiolos.'),
('Doce', 'Pizzas irresistíveis para quem ama sobremesa.');


SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco decimal(6,2) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
ingredientes VARCHAR(255) NOT NULL,
categoria_id BIGINT NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Pizzas Tradicionais (categoria_id = 1)
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Calabresa', 49.90, 'Grande', 'Mussarela, calabresa, cebola, orégano', 1),
('Marguerita', 45.00, 'Média', 'Mussarela, tomate, manjericão fresco', 1);

-- Pizzas Premium (categoria_id = 2)
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Camarão Especial', 79.90, 'Grande', 'Camarão, catupiry, alho, mussarela', 2),
('Picanha com Cheddar', 72.50, 'Grande', 'Picanha fatiada, cheddar, cebola caramelizada', 2);

-- Pizzas Veganas (categoria_id = 3)
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Veggie Supreme', 55.00, 'Grande', 'Mussarela vegana, pimentão, champignon, cebola, azeitona', 3),
('Tofu com Brócolis', 52.00, 'Média', 'Tofu temperado, brócolis, tomate seco, molho especial vegano', 3);

-- Especial da Casa (categoria_id = 4)
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Pizza Lega Suprema', 85.00, 'Família', 'Mussarela, calabresa, bacon, frango, catupiry, azeitona, pimentão', 4),
('Quatro Estações Lega', 82.00, 'Família', 'Mussarela, presunto, champignon, alcachofra, azeitonas pretas, orégano', 4);

-- Pizzas Doces (categoria_id = 5)
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Chocolate com Morango', 39.90, 'Média', 'Chocolate ao leite, morangos frescos', 5),
('Banana com Canela', 35.00, 'Média', 'Banana, açúcar, canela, leite condensado', 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.id_pizza, tb_pizzas.nome, tb_pizzas.preco, 
tb_pizzas.tamanho, tb_pizzas.ingredientes, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Premium";














