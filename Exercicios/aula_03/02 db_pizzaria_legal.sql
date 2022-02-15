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

insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Z","morango com chocolate","doce","2022-02-14",75.00,5);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Syd","dois queijos","salgada","2022-02-14",40.00,2);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Bridge","strogonoff","salgada","2022-02-10",45,4);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Sky","calabresa","salgada","2022-01-02",25.00,2);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Jack","toscana","salgada","2022-01-16",27.50,2);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Sam","frango com queijo","salgada","2022-02-14",20.00,1);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Kat","frango","salgada","2022-02-14",45.00,3);
insert into tb_pizza (cliente, sabor, docesalgada, dtpedido, valor, categoria_id) values ("Boom","romeu e julieta","doce","2022-02-14",80.00,5);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where sabor like "%c%";
select cliente, sabor, docesalgada, dtpedido, valor, tipo, tamanho, pedacos from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select cliente, sabor, docesalgada, dtpedido, valor, tipo, tamanho, pedacos from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.id = 2;