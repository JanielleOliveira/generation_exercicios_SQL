-- Atividade 2

Create database db_e_commerce;
use db_e_commerce;

create table tb_produtos(
id bigint auto_increment primary key,
tipo varchar(255) not null,
nome_produto varchar(255) not null,
categoria varchar(255) not null,
preco decimal (10,2) not null
);

INSERT INTO tb_produtos (tipo, nome_produto, categoria, preco) VALUES
('Físico', 'Livro: O Senhor dos Anéis', 'Livro Físico', 89.90),
('Digital', 'E-book: Introdução à Programação', 'Livro Digital', 29.90),
('Físico', 'Headset Gamer HyperX', 'Acessório Gamer', 550.00),
('Digital', 'Curso Online de SQL', 'Curso Digital', 120.00),
('Físico', 'Mouse Logitech MX Master 3', 'Periféricos', 500.65),
('Digital', 'Software Antivírus 1 Ano', 'Licença Digital', 79.90),
('Físico', 'Camiseta Generation JS 09', 'Vestuário', 59.90),
('Digital', 'Álbum de Música MP3', 'Música Digital', 19.90);

SELECT * FROM tb_produtos where preco > 500;

SELECT * FROM tb_produtos where preco < 500;

select * from tb_produtos;

UPDATE tb_produtos SET preco = 350.00 WHERE id = 3;

