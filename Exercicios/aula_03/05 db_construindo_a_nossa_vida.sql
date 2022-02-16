create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (	
id bigint auto_increment,
setor varchar(255) not null,
funcionarios int,
descontofidelidade int,
primary key (id)
);

insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Ferramentas", 3, 10);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Pintura", 2, 7);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Decoração", 4, 10);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Iluminação", 3, 15);
insert into tb_categoria (setor, funcionarios, descontofidelidade) values ("Jardim", 4, 13);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2),
unimedida varchar(255),
quantidade bigint,
marca varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Espelho decorativo", 169.90, "1 unidade", 100, "Inspire", 3);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Jogo de chave de fenda", 549.00, "Kit com 100 unidades", 100, "Yabox", 1);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Tesoura para poda", 18.90, "1 unidade", 150, "Palisad", 5);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Lavadora de alta pressão", 1799.00, "1 unidade", 170, "Power do Brasil", 5);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Tinta acrílica de parede", 28.90, "1 unidade", 130, "Hidracor", 2);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Tinta spray para plástico", 29.90, "1 unidade", 90, "Luxens", 2);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Lâmpada fluorescente", 12.99, "1 unidade", 70, "Lexman", 4);
insert into tb_produto (nome, preco, unimedida, quantidade, marca, categoria_id) values ("Lâmpada LED de Filamento", 33.76, "1 unidade", 70, "Avant", 2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where categoria_id = 5;