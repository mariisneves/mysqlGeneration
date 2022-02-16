create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
area varchar(255),
professores int,
preco decimal(8,2),
primary key(id)
);

insert into tb_categoria (area, professores, preco) values ("Programação", 6, 80.00);
insert into tb_categoria (area, professores, preco) values ("Front-End", 5, 70.00);
insert into tb_categoria (area, professores, preco) values ("Data Science", 3, 65.00);
insert into tb_categoria (area, professores, preco) values ("DevOps", 2, 50.00);
insert into tb_categoria (area, professores, preco) values ("UX & Design", 3, 60.00);

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
cargahoraria int,
periodo varchar(255),
atividades int,
nota decimal(4,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("Lógica de programação", 44, "noturno", 136, 9.5, 1);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("Python", 174, "noturno", 199, 9.4, 1);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("HTML e CSS", 167, "noturno", 176, 9.6, 2);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("React", 90, "noturno", 154, 8.8, 2);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("SQL e Banco de Dados", 384, "vespertino", 543, 9.5, 3);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("Engenharia de Dados", 416, "vespertino", 416, 8.7, 3);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("Builds e Controle de versão", 32, "matutino", 122, 9.4, 4);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("UI - User Interface", 221, "matutino", 217, 9.3, 5);
insert into tb_curso (nome, cargahoraria, periodo, atividades, nota, categoria_id) values ("Java para Web", 115, "noturno", 164, 9.4, 1);

select nome, cargahoraria, periodo, atividades, nota, preco from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id where preco > 50;
select nome, cargahoraria, periodo, atividades, nota, preco from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id where preco between 3 and 60;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id;
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id where categoria_id = 1;
