drop database db_estoque;

CREATE database db_estoque;

USE db_estoque; 

CREATE TABLE tb_marcas ( -- criacao da tabela
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY(id)
);


drop table tb_marcas; -- exclusao da tabela

select * from tb_marcas;-- consulta


insert into tb_marcas(nome, ativo) values ("nike", true); -- insercao

insert into tb_marcas(nome, ativo) values ("adidas", false); -- insercao



update  tb_marcas set ativo = true where id = 2; 



select nome from tb_marcas; -- consulta pelo nome



insert into tb_marcas(nome, ativo) values ("vans", true); -- insercao


select nome, ativo from tb_marcas where id = 2; -- mostrar um id especifico

delete from tb_marcas where id = 3; -- deletar uma linha



alter table tb_marcas add descricao varchar(255); -- Criar uma nova coluna na tabela

alter table tb_marcas drop column descricao; -- Excluir uma  coluna na tabela


insert into tb_marcas(nome, ativo) values ("Nike", true); -- insercao

insert into tb_marcas(nome, ativo) values ("Adidas", false); -- insercao

insert into tb_marcas(nome, ativo) values ("Zara", true); -- insercao

insert into tb_marcas(nome, ativo) values ("Louis", false); -- insercao

insert into tb_marcas(nome, ativo) values ("Pulman", true); -- insercao

insert into tb_marcas(nome, ativo) values ("Hermes", false); -- insercao

insert into tb_marcas(nome, ativo) values ("Gucci", true); -- insercao

insert into tb_marcas(nome, ativo) values ("Cartier", false); -- insercao

insert into tb_marcas(nome, ativo) values ("Polo", true); -- insercao

insert into tb_marcas(nome, ativo) values ("Armani", false); -- insercao


select * from tb_marcas;-- consulta

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal,
marca_id bigint not null,
primary key(id),
foreign key(marca_id) references tb_marcas(id)
);


select * from  tb_produtos;

insert into tb_produtos(nome, preco, marca_id) values ("camisa", 50, 1);
insert into tb_produtos(nome, preco, marca_id) values ("tenis", 190.90, 2);

ALTER TABLE tb_produtos MODIFY column preco DECIMAL(6,2);

insert into tb_produtos(nome, preco, marca_id) values ("calca", 79.80, 3);

 -- insert into tb_produtos(nome, preco, marca_id) values ("calca", 79.80, 99); da erro pois nao existe marca_id 99
 
 -- comandos de juncao (INNER join / RIGHT join / LEFT join)

-- duas juncoes em duas consultas
 SELECT * FROM tb_produtos;
 SELECT * FROM tb_categorias;
 
 -- uma consulta apenas com as duas tabelas
 
 -- relacionamento interligado produto e categoria interligados INNER JOIN
 SELECT nome, preco, quantidade, tb_categorias.descricao -- listar em uma outra coluna a descricao de categoria para o produto mas a descricao esta na tabela categoria

FROM tb_produtos 

INNER JOIN tb_categorias 

ON tb_produtos.categoriaid = tb_categorias.id; -- identifica os campos se existe um relacioanemento entre eles devem ter lago em comum no caso o id
 -- on fica como onde, procura
 
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id; -- comparacao se tem uma relacao entre essas tabelas e seus ids
 