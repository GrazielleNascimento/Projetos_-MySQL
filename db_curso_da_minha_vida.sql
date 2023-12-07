-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;
use db_curso_da_minha_vida;

-- Criação da Tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(60) NOT NULL,
    descricao_categoria VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);

-- Criação da Tabela tb_cursos
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    descricao_curso VARCHAR(500) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES 
    ("Frontend", "Cursos relacionados ao desenvolvimento Frontend."),
    ("Backend", "Cursos relacionados ao desenvolvimento Backend."),
    ("UX e UI", "Cursos de Experiência do Usuário e Interface do Usuário."),
    ("Cybersecurity", "Cursos de segurança cibernética."),
    ("DevOps", "Cursos sobre práticas de DevOps."),
    ("Redes", "Cursos sobre gerenciamento e configuração de redes.");

-- Inserção de 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (nome_curso, descricao_curso, preco, categoria_id)
VALUES
    ("Desenvolvimento Web Frontend", "Aprenda a criar interfaces atraentes e interativas.", 599.99, 1),
    ("Desenvolvimento Web Backend", "Aprofunde-se no desenvolvimento do lado do servidor.", 899.99, 2),
    ("UX/UI Design Avançado", "Aprimore suas habilidades em design de experiência do usuário e interface do usuário.", 799.99, 3),
    ("Segurança Cibernética Essencial", "Fundamentos e práticas de segurança cibernética.", 499.99, 4),
    ("Práticas de DevOps", "Implementação de práticas ágeis e DevOps.", 699.99, 5),
    ("Administração de Redes Corporativas", "Gerenciamento e configuração de redes empresariais.", 749.99, 6),
    ("Arquitetura Frontend Avançada", "Conceitos avançados de arquitetura frontend.", 899.99, 1),
    ("Estratégias de Segurança em Redes", "Implementação de estratégias avançadas de segurança em redes.", 799.99, 6);

-- SELECT que retorna todos os cursos cujo valor seja maior do que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- SELECT que retorna todos os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- SELECT utilizando o operador LIKE, buscando todos os cursos que possuam a letra J no atributo nome_curso
SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias
SELECT tb_cursos.nome_curso, tb_cursos.descricao_curso, tb_cursos.preco, tb_categorias.nome_categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

-- SELECT utilizando INNER JOIN com filtro por categoria (exemplo: Frontend)
SELECT tb_cursos.nome_curso, tb_cursos.descricao_curso, tb_cursos.preco, tb_categorias.nome_categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Frontend';
