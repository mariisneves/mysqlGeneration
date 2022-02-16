create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
setor varchar(255) not null,
funcionarios int,
descontofidelidade decimal(8,2),
primary key(id)
);

insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Carnes", 5, 5);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Temperos", 1, 10);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Itens para churrasco", 1, 13);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Bebida", 2, 7);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Sobremesa", 1, 10);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
quantidade int,
dtvalidade date null,
fornecedor varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Alcatra", 54.00, 50, "2022-03-15", "JBS", 1);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Picanha", 84.63, 60, "2022-08-15", "JBS", 1);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Carvão", 21.54, 30, "2023-08-15", "Ipês", 3);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Farofa", 12.90, 30, "2023-02-15", "Yoki", 2);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Peito de frango", 15.48, 63, "2022-04-03", "JBS", 1);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Barbecue", 8.13, 15, "2023-02-15", "Heinz", 2);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Sal grosso", 15.62, 70, "2023-02-15", "Cisne", 3);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Prato descartável", 1, 27, "2024-06-07", "Pra Festa!", 3);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Coca-Cola Zero", 8.99, 120, "2022-05-29", "Coca-Cola", 4);
insert into tb_produto (nome, preco, quantidade, dtvalidade, fornecedor, categoria_id) values ("Pudim", 13.54, 5, "2022-02-17", "St. Marche", 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select nome, preco, preco, quantidade, dtvalidade, fornecedor, setor, funcionarios, descontofidelidade from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select nome, preco, preco, quantidade, dtvalidade, fornecedor, setor, funcionarios, descontofidelidade from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 3;