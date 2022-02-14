create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255),
pedacos int,
primary key (id)
);

insert into tb_categoria (tipo, tamanho, pedacos) values ("Youngling", "Brotinho", 2);
insert into tb_categoria (tipo, tamanho, pedacos) values ("Padawan", "Pequena", 4);
insert into tb_categoria (tipo, tamanho, pedacos) values ("Cavaleiro Jedi", "Média", 6);
insert into tb_categoria (tipo, tamanho, pedacos) values ("Mestre Jedi", "Grande", 8);
insert into tb_categoria (tipo, tamanho, pedacos) values ("Grão-Mestre", "Gigante", 12);

create table tb_pizza(
id bigint auto_increment,
cliente varchar(255) not null,
sabor varchar(255) not null,
docesalgada varchar(255),
dtpedido date null,
valor decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Naruto","Kakashi","Folha",1000,900,2);
