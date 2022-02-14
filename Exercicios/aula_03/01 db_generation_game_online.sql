create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
missoes char,
minimodemissoes bigint,
primary key (id)
);

insert into tb_classe (classe, missoes, minimodemissoes) values ("Academia ninja", "E", 0);
insert into tb_classe (classe, missoes, minimodemissoes) values ("Genin", "D", 100);
insert into tb_classe (classe, missoes, minimodemissoes) values ("Chuunin", "C", 150);
insert into tb_classe (classe, missoes, minimodemissoes) values ("Jounin", "B", 200);
insert into tb_classe (classe, missoes, minimodemissoes) values ("Anbu", "A", 300);
insert into tb_classe (classe, missoes, minimodemissoes) values ("Kage", "S", 400);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
sensei varchar(255),
vila varchar(255),
ataque bigint,
defesa bigint,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Naruto","Kakashi","Folha",1000,900,2);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Hinata","Kurenai","Folha",800,1000,2);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Konohamaru","Ebisu","Folha",700,500,1);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Itachi","Madara","Renegado",2500,2700,5);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Kushina","Mito Uzumaki","Folha",2500,2300,4);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Minato","Jiraiya","Folha",3000,3000,6);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Tsunade","Hiruzen","Folha",3000,3000,6);
insert into tb_personagem (nome, sensei, vila, ataque, defesa, classe_id) values ("Temari","Baki","Areia",1100,1200,2);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa > 1000 and defesa < 2000;
select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select nome, sensei, vila, ataque, defesa, classe, missoes, minimodemissoes 
from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id order by tb_classe.id;

select nome, sensei, vila, ataque, defesa, classe, missoes, minimodemissoes from tb_personagem left join tb_classe 
on tb_personagem.classe_id = tb_classe.id where classe_id = 6 order by nome;

