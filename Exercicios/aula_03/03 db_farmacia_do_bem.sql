create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
descontoconvenioporcentagem int,
funcionarios int,
primary key(id)
);

insert into tb_categoria (nome, descontoconvenioporcentagem, funcionarios) values ("Cosméticos", 15, 3);
insert into tb_categoria (nome, descontoconvenioporcentagem, funcionarios) values ("Medicamentos", 10, 5);
insert into tb_categoria (nome, descontoconvenioporcentagem, funcionarios) values ("Higiene", 20, 3);
insert into tb_categoria (nome, descontoconvenioporcentagem, funcionarios) values ("Saúde", 20, 4);
insert into tb_categoria (nome, descontoconvenioporcentagem, funcionarios) values ("Bebê", 7, 1);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal (8,2),
dtfabricacao date null,
dtvalidade date null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Antialérgico", 150, 23.95, "2021-12-10", "2022-12-10", 2);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Protetor solar", 250, 43.00, "2021-10-12", "2022-12-10", 1);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Fralda de bebê", 300, 70.86, "2021-05-07", "2022-10-06", 5);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Escova de dente", 170, 27.88, "2021-12-10", "2022-12-10", 3);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Máscara descartável", 500, 3.64, "2022-01-12", "2023-11-15", 4);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Perfume", 250, 90.54, "2021-06-23", "2022-06-23", 1);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Soro fisiológico", 230, 6.53, "2021-01-10", "2022-05-10", 4);
insert into tb_produto (nome, quantidade, preco, dtfabricacao, dtvalidade, categoria_id) values ("Cotonete", 185, 3.69, "2021-12-10", "2022-12-10", 3);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%b%";
select tb_produto.nome, quantidade, preco, dtfabricacao, dtvalidade, tb_categoria.nome, descontoconvenioporcentagem, funcionarios from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select tb_produto.nome, quantidade, preco, dtfabricacao, dtvalidade, tb_categoria.nome, descontoconvenioporcentagem, funcionarios from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where tb_categoria.id = 3;
