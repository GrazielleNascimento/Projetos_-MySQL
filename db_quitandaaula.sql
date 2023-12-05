CREATE DATABASE db_quitanda;

-- Selecionando o BD
USE db_quitanda; 

-- Criacao da Tabela
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT, -- incrementa +1
	nome VARCHAR(255) NOT NULL, -- 255 espaços de memoria, não pode ser nulo deve ter 1 caracter pelo menos
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id) -- chave primaria
);

-- COMANDO INSERIR
-- INSERIR INTO nome_tabela(campos da tabela) VALUES (valores que serao adicionados)
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);
--  MANEIRAS DE CONSULTA
-- SELECT  nome dos campos FROM nome da tabela
SELECT * FROM tb_produtos;

SELECT quantidade , datavalidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome = "uva";

SELECT * FROM tb_produtos WHERE preco > 5.00;
-- ALTER ALTERA A ESTRUTURA DA TABELA
-- ALTER TABLE nome da tabela MODIFY campo que vai ser modificado;
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);-- 6 campos numericos e 2 deles guardam a casa decimal 0000.00 6 campos, e desses 6 campos, dois atras da virgula

SELECT * FROM tb_produtos; -- mostrar como o banco ficou dps das modificacoes EXIBIR

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES("abacaxi", 10, "2023-06-25", 6.25);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES("pitaya", 10, "2023-06-25", 9.99);

-- ALTERA DADOS DA TABELA
-- UPDATE nome da tabela SET campo que vai ser atualizado WHERE condicao do where;
UPDATE tb_produtos SET preco = 2.99, nome = "amora", quantidade = 3 WHERE Id= 8;

DELETE FROM tb_produtos WHERE id = 2; -- deleta uma linha da tabela especifica com o WHERE
