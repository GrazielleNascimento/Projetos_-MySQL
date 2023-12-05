CREATE DATABASE db_escola;


CREATE TABLE tb_estudantes(
id_estudante BIGINT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
data_nascimento DATE NOT NULL,
curso VARCHAR(60) NOT NULL,
nota DECIMAL (4,2) NOT NULL,
data_matricula DATE NOT NULL,
PRIMARY KEY (id_estudante)
);

INSERT INTO tb_estudantes (nome, data_nascimento, curso, nota, data_matricula)
VALUES
    ('Maria Silva', '2003-01-15', 'Ciências da Computação', 8.5, '2022-01-15'),
    ('João Oliveira', '2002-02-10', 'Engenharia Elétrica', 5.8, '2022-02-10'),
    ('Ana Souza', '2001-12-20', 'Administração', 9.2, '2021-12-20'),
    ('Carlos Santos', '2002-11-05', 'Medicina', 6.5, '2021-11-05'),
    ('Camila Lima', '2001-03-01', 'Psicologia', 8.9, '2022-03-01'),
    ('Pedro Mendes', '2004-04-15', 'Arquitetura', 6.2, '2022-04-15'),
    ('Luiza Oliveira', '2001-10-10', 'Direito', 9.8, '2021-10-10'),
    ('Rafael Pereira', '2002-05-20', 'Economia', 7.9, '2022-05-20');
    
SELECT * FROM tb_estudantes WHERE nota < 7.00;
SELECT * FROM tb_estudantes WHERE nota > 7.00;

UPDATE tb_estudantes SET nome = 'Kamila Lima' WHERE id_estudante = 5;

SELECT * FROM tb_estudantes;
