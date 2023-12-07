CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(200) not null,
descricao varchar(200) not null,
primary key (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(200) not null,
dataValidade date not null,
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Frutas", "Deliciosas Frutas");

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Verduras", "Deliciosas Verduras");

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Legumes", "Deliciososs Legumes");

select * from tb_categorias;

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id)
VALUES ("Maçã", "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id)
VALUES ("Banana",  "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id)
VALUES ("Batata doce", "2022-03-09", 10.00, 3);

select * from tb_produtos;

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra D no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%d%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT nome, dataValidade, preco, tb_categorias.tipo as categoria	-- Operador AS(alias): serve para dar um "apelido" para um campo durante a exibição do SELECT
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica
SELECT nome, tb_categorias.tipo as categoria	-- Operador AS(alias): serve para dar um "apelido" para um campo durante a exibição do SELECT
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Frutas";

