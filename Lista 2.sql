-- conceito 1 --
select count(nome) from produtos;

-- conceito 2 --
select avg(preco) from produtos;

-- conceito 3 --
select * from produtos
where nome like 'Modelo 20';

-- conceito 4 --
select nome, preco, descricao from produtos
where preco between 50 and 150;

-- conceito 5 --
select nome, preco from produtos
order by preco asc
limit 5;

-- conceito 6 --
select nome from produtos
where quantidade_estoque = 0;

-- conceito 7 --
select nome, descricao from produtos 
where descricao is not null or descricao !=  '';

-- conceito 8 --
select nome, preco from produtos
where preco > (select avg(preco) from produtos);

-- conceto 9 --
select * from produtos 
where nome like 'SSD';

-- conceito 10 --
select nome, preco from produtos
order by preco desc;

-- conceito 11 --
select nome, quantidade_estoque from produtos
where quantidade_estoque % 2 = 0;

-- conceito 12 --
select nome, descricao from produtos
where preco < 100.00 and quantidade_estoque > 0;