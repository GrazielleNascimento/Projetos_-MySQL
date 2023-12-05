CREATE DATABASE db_ecommerce_beauty;

USE db_ecommerce_beauty;

CREATE TABLE  tb_produtos(
id_produto BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(60) NOT NULL,
marca VARCHAR(60) NOT NULL,
categoria VARCHAR(60) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
estoque INT NOT NULL,
PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos( nome_produto, marca, categoria, valor, estoque)
VALUES ('Base Líquida', 'Marca A', 'Maquiagem', 25.99, 100),
    ('Shampoo Hidratante', 'Marca B', 'Cabelos', 15.50, 150),
    ('Creme Antienvelhecimento', 'Marca C', 'Cuidados com a Pele', 89.90, 75),
    ('Perfume Floral', 'Marca D', 'Fragrâncias', 120.00, 50),
    ('Kit de Pincéis', 'Marca A', 'Maquiagem', 35.00, 80),
    ('Protetor Solar FPS 50', 'Marca C', 'Cuidados com a Pele', 29.99, 120),
    ('Secador de Cabelo Profissional', 'Marca E', 'Acessórios para Cabelos', 299.99, 30),
    ('Kit de Manicure', 'Marca B', 'Cuidados com as Unhas', 12.50, 900);

 SELECT * FROM tb_produtos;

-- Consulta - Produtos com Valor Maior que 500    
 SELECT * FROM tb_produtos WHERE valor > 500;
 
 -- Consulta - Produtos com Valor Menor que 500
 SELECT * FROM tb_produtos WHERE valor < 500;
 
 -- Atualização de Registro 
 UPDATE tb_produtos SET valor = 600.90 WHERE id_produto = 6;
 