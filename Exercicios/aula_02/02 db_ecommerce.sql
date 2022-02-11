create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(50),
marca varchar (50),
setor varchar(50),
quantidade int,
preco decimal (8,2),
primary key (id)
);

insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Boneco Naruto", "Funko", "Action Figures", 10, 80.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Boneco Hinata", "Funko", "Action Figures", 10, 80.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("HQ Power Rangers Vol. 1", "Editora Pixel", "Quadrinhos", 5, 20.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Camiseta Capitã Marvel", "Piticas", "Vestuário", 15, 39.99);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Mangá Boruto Vol. 5", "Panini", "Quadrinhos", 10, 22.90);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("PlayStation 5", "Sony", "Eletrônicos", 50, 7000.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Boneco Hinata", "Funko", "Action Figures", 13, 80.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Mangá Soul Eater Vol. 3", "JBC", "Quadrinhos", 30, 45.70);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Mangá Bloom Into You Vol. 2", "Panini", "Quadrinhos", 23, 19.99);

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 5500.00 where id = 6;
