create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(50),
salario decimal(8,2),
ano_nascimento int,
telefone varchar(10),
cidade varchar(25),
primary key (id)
);

insert into tb_funcionaries(nome, salario, ano_nascimento, telefone, cidade) values ("Manoel", 7000, 1962, "98765-4321", "São Paulo");
insert into tb_funcionaries(nome, salario, ano_nascimento, telefone, cidade) values ("Valéria", 7500, 1964, "94351-7914", "Osasco");
insert into tb_funcionaries(nome, salario, ano_nascimento, telefone, cidade) values ("Guilherme", 2100, 1990, "98316-9465", "Osasco");
insert into tb_funcionaries(nome, salario, ano_nascimento, telefone, cidade) values ("Mariana", 1500, 1996, "90043-8050", "São Paulo");
insert into tb_funcionaries(nome, salario, ano_nascimento, telefone, cidade) values ("Gabriel", 1000, 1997, "91234-5678", "Osasco");

select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set cidade = "Santos" where id = 5;
