create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (100),
ra int,
periodo varchar(15),
ano int,
nota decimal(4,2),
primary key (id)
);

insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Mariana", 18328, "matutino", 9, 9.5);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Iris", 61522, "matutino", 9, 8);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Ana", 31434, "matutino", 9, 8);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Danilo", 43169, "vespertino", 8, 7.6);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Merlin", 63046, "noturno", 7, 4.8);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Roberta", 12946, "vespertino", 8, 10);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Jefferson", 12442, "noturno", 6, 4.4);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Juan", 23050, "noturno", 7, 5.1);

select * from tb_estudantes;
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set periodo = "vespertino" where id = 8;
