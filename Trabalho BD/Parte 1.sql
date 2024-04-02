create schema trabalhos;
use trabalhos;
create database parte1;
use parte1;

create table clientes(
id int auto_increment primary key,
nome varchar(30) not null,
endereco varchar(50) not null,
email varchar(30) not null,
celular varchar(15) not null,
dt_nasc date not null
);

create table produtos(
id int auto_increment primary key,
nome varchar(50) not null,
preco decimal(12,2) unsigned not null,
decricao tinytext,
quant_est int unsigned not null
);

create table pedido(
id int auto_increment primary key,
id_cliente int,
dt_compra date not null,
valot_t decimal(12,2) unsigned not null,
entrega date,
foreign key (id_cliente) references clientes(id)
);

create table itens_p(
id int auto_increment primary key,
numero_p int,
id_produto int,
quant int unsigned not null,
valor_u decimal(12,2) unsigned not null,
valor_t decimal(12,2) unsigned not null,
foreign key (numero_p) references pedido(id),
foreign key (id_produto) references produtos(id)
);