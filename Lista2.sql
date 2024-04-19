-- Conceito 1 --
select sum(quantidade_estoque) as soma_estoque
from produtos;

-- Conceito 2 --
select avg(preco) as media_precos
from produtos;

-- Conceito 3 --


-- Conceito 4 --
select nome, preco, descricao 
from produtos 
where preco between 50 and 150;

-- Conceito 5 --
select nome, preco 
from produtos 
order by preco 
limit 5;

-- Conceito 6 --
select nome 
from produtos 
where produto_id not in (
    select produto_id 
    from itens_pedido
);

-- Conceito 7 --

-- Conceito 8 --
select nome, preco
from produtos
where preco > (
    select avg(preco)
    from produtos
);