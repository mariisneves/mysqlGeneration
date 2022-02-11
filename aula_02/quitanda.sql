-- Criando o banco de dados db_quitanda
create database db_quitanda;

-- Selecione o banco de dados db_quitanda
use db_quitanda;

-- Criando tabela no banco db_quitanda
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

-- Inserindo dados na tabela tb_produtos
insert into tb_produtos(nome, quantidade, preco) values ("Maçã", 10, 1.99);
-- preco deu warning pq ele "truncou" o valor e arredondou
insert into tb_produtos(nome, quantidade, preco) values ("Banana", 13, 4.99);
insert into tb_produtos(nome, quantidade, preco) values ("Manga", 20, 5.49);
insert into tb_produtos(nome, quantidade, preco) values ("Melancia", 3, 10.00);
insert into tb_produtos(nome, quantidade, preco) values ("Cebola", 100, 1.50);

-- Consultando dados no banco
select * from tb_produtos;

-- Alterando dados na tabela
update tb_produtos set preco = 1.99 where id = 1;

-- Deletando dados da tabela
delete from tb_produtos where id = 2; 

insert into tb_produtos(nome, quantidade, preco) values ("Batata", 150, 5.50);

-- Mudando a estrutura da tabela (mexer naquele "preco decimal")
alter table tb_produtos modify preco decimal(8,2); -- 000000.00 (exemplo)
-- comando de alterar | nome da tabela | o que ele vai fazer | nome  da coluna | parametro
-- Adicionando nova coluna
alter table tb_produtos add descricao varchar(255);
-- Removendo toda a coluna descricao
alter table tb_produtos drop descricao;

-- Update sem where (mysql tem uma trava e não permite fazer desse modo)
update tb_produtos set descricao = "Banana Ouro";
-- Desabilita a trava
set SQL_SAFE_UPDATES = 0;
-- Habilita a trava
set SQL_SAFE_UPDATES = 1;

-- Mostrando resultados específicos
select nome, preco from tb_produtos;
select * from tb_produtos where preco > 1.99;
select * from tb_produtos where preco > 5.99 or nome = "Banana";
