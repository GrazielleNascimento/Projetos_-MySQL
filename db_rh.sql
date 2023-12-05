CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
id_colaborador BIGINT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
cargo VARCHAR(60) NOT NULL,
departamento VARCHAR(20) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
PRIMARY KEY(id_colaborador)
);

-- Inserção de Dados
INSERT INTO tb_colaboradores (nome, cargo, departamento, salario)
VALUES
    ('Ana Silva', 'Analista de Recursos Humanos', 'RH', 2500.00),
    ('Carlos Oliveira', 'Gerente de Vendas', 'Vendas', 3500.00),
    ('Mariana Souza', 'Assistente Administrativo', 'Administração', 1800.00),
    ('Pedro Lima', 'Analista Financeiro', 'Financeiro', 2200.00),
    ('Gabriel Santos', 'Desenvolvedor de Software', 'TI', 3000.00);
    
  SELECT * FROM tb_colaboradores ;
-- Consulta - Colaboradores com Salário Maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- Consulta - Colaboradores com Salário Menor que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1900 WHERE id_colaborador = 4;