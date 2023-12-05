CREATE DATABASE db_servico_rh;

USE db_servico_rh;


CREATE TABLE  tb_colaboradores (
id_colaborador BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cargo VARCHAR(50) NOT NULL,
departamento VARCHAR(50) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id_colaborador)
);

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario)
VALUES("João Silva","Desenvolvedor","TI",3000.00);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario)
VALUES 
    ('Maria Oliveira', 'Analista de Recursos Humanos', 'RH', 2500.00),
    ('Carlos Santos', 'Gerente de Vendas', 'Vendas', 3500.00),
    ('Ana Souza', 'Assistente Administrativo', 'Administração', 1800.00),
    ('Pedro Lima', 'Analista Financeiro', 'Financeiro', 2200.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores  WHERE  salario > 2000;
SELECT * FROM tb_colaboradores  WHERE  salario < 2000;

UPDATE tb_colaboradores SET salario = 1000.00 WHERE id = 4;
