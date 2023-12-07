CREATE DATABASE db_pizzaria_legal;



CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
descricao VARCHAR(500) NOT NULL,
restricao_dieta VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
tamanho CHAR(1) NOT NULL,
preco DECIMAL(8, 2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao, restricao_dieta)
VALUES 
    ("Clássicas", "Nossas clássicas são preparadas com ingredientes tradicionais e uma massa perfeitamente equilibrada.", "Contém Gluten"),
    ("Vegetarianas", "Uma celebração de sabores vegetais frescos e saudáveis.", "Sem Gluten"),
    ("Picantes", "Se você busca um toque de calor em cada mordida.", "Contém Gluten"),
    ("Frutos do Mar", "Uma jornada pelo sabor do mar. Experimente nossas deliciosas opções com frutos do mar frescos, cuidadosamente selecionados para proporcionar uma experiência única.", "Sem lactose"),
    ("Queijos Especiais", "Para os amantes de queijo, apresentamos uma seleção premium de queijos especiais. Cada pizza é uma explosão de sabores intensos, proporcionando uma experiência inesquecível.", "Contém gluten");


INSERT INTO tb_pizzas (nome, tamanho, preco, categoria_id)
VALUES
    ("Pizza Margherita", "M", 105.50, 1),
    ("Pizza Veggie Delight", "L", 85.40, 2),
    ("Pizza Diablo", "M", 22.99, 3),
    ("Pizza Frutos do Mar", "G", 59.99, 4),
    ("Pizza Quatro Queijos", "P", 18.99, 5),
    ("Pizza Calabresa Picante", "M", 23.99, 3),
    ("Pizza Especial do Chef", "G", 30.99, 1),
    ("Pizza Tropical", "M", 150.99, 2);
    
  -- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
    SELECT * FROM tb_pizzas WHERE preco > 45.00;
    
  -- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
	SELECT * FROM  tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
    
   -- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
   SELECT * FROM tb_pizzas WHERE nome LIKE "%al%";
   
   -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
	SELECT P.nome, P.tamanho, P.preco, C.descricao AS descricao_categoria
	FROM tb_pizzas P INNER JOIN tb_categorias C
	ON P.categoria_id = C.id;
    
 --   Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT P.nome, P.tamanho, P.preco, C.descricao AS descricao_categoria
	FROM tb_pizzas P INNER JOIN tb_categorias C
	ON P.categoria_id = C.id
    WHERE C.nome = "Clássicas";
    
    
    