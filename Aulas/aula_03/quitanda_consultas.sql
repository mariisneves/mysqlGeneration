select * from tb_produtos;

-- seleção usando o %
select * from tb_produtos where nome like "ba%";
select nome, quantidade from tb_produtos where nome like "%u%";
select nome, categoria_id from tb_produtos where nome like "%e" and categoria_id = 3;
select nome, quantidade from tb_produtos where nome like "A%" and nome like "%m";
select nome, quantidade from tb_produtos where nome like "Ba%" or nome like "%m";

-- contar registro
select count(id) from tb_produtos;
select count(dtvalidade) from tb_produtos; -- Ele não conta o que tiver null

-- soma
select sum(preco) as ValorTotal from tb_produtos;

-- renomeando nome dos atributos no resultado da pesquisa
select nome as Produto, quantidade as Quantidade, dtvalidade as DataDeValidade, preco as Preço from tb_produtos;
select sum(preco) as Valor from tb_produtos where nome like "A%";

-- media de valores
select avg(preco) as MediaDePreço from tb_produtos;

-- valor mínimo e máximo
select min(preco) as MenorPreço from tb_produtos;
select max(preco) as MaiorPreço from tb_produtos;

-- relacionamento entre tabelas (produtos -> categorias)
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos left join tb_categorias -- tb_produtos é a tabela principal
on tb_produtos.categoria_id = tb_categorias.id; -- identificando a chave estrangeira com a chave primária

-- relacionamento entre tabelas (categorias -> produtos)
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos right join tb_categorias -- tb_categorias é a tabela principal
on tb_produtos.categoria_id = tb_categorias.id; -- identificando a chave estrangeira com a chave primária

-- relacionamento entre tabelas (prioriza a relação das duas)
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id; 