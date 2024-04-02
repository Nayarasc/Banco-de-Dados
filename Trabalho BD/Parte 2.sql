use parte1;

select * from clientes;
insert into clientes values
(null, "Nayara", "Rua deide", "nayara.silva@eaportal.org", "19958836260", "2008-01-15"),
(null, "Caroline", "Rua deide", "caroline.mello@eaportal.org", "19958836260", "2008-02-15"),
(null, "Thais", "Rua deide", "thais.santana@eaportal.org", "19958836260", "2008-03-15"),
(null, "Larissa", "Rua deide", "larissa.silvestre@eaportal.org", "19958836260", "2008-04-15"),
(null, "Ruan", "Rua deide", "ruan.lucas@eaportal.org", "19958836260", "2008-05-15"),
(null, "Kauanny", "Rua deide", "kauanny.aguirre@eaportal.org", "19958836260", "2008-06-15"),
(null, "Marcus", "Rua deide", "marcus.rogerio@eaportal.org", "19958836260", "2008-07-15"),
(null, "Bruno", "Rua deide", "bruno.magalhaes@eaportal.org", "19958836260", "2008-08-15"),
(null, "Ana", "Rua deide", "ana.savegano@eaportal.org", "19958836260", "2008-09-15"),
(null, "Tayna", "Rua deide", "tayna.jimenes@eaportal.org", "19958836260", "2008-10-15");

select * from produtos;
insert into produtos values
(null, 'ped1', 100.00, 'desc.1', 10), 
(null, 'ped2', 200.00, 'desc.2', 20), 
(null, 'ped3', 300.00, 'desc.3', 30), 
(null, 'ped4', 400.00, 'desc.4', 40), 
(null, 'ped5', 500.00, 'desc.5', 50), 
(null, 'ped6', 600.00, 'desc.6', 60), 
(null, 'ped7', 700.00, 'desc.7', 70), 
(null, 'ped8', 800.00, 'desc.8', 80), 
(null, 'ped9', 900.00, 'desc.9', 90), 
(null, 'ped10', 1000.00, 'desc.10', 100);

select * from pedido;
insert into pedido values
(null, 1, '2019-01-01', '100.00', '2020-01-01'),
(null, 2, '2019-01-01', '200.00', '2020-01-01'),
(null, 3, '2019-01-01', '300.00', '2020-01-01'),
(null, 4, '2019-01-01', '400.00', '2020-01-01'),
(null, 5, '2019-01-01', '500.00', '2020-01-01'),
(null, 6, '2019-01-01', '600.00', '2020-01-01'),
(null, 7, '2019-01-01', '700.00', '2020-01-01'),
(null, 8, '2019-01-01', '800.00', '2020-01-01'),
(null, 9, '2019-01-01', '900.00', '2020-01-01'),
(null, 10, '2019-01-01', '1000.00', '2020-01-01');

select * from itens_p;
insert into itens_p values
(null, 1, 1, '1', '100.00', '1000.00'),
(null, 2, 2, '2', '200.00', '2000.00'),
(null, 3, 3, '3', '300.00', '3000.00'),
(null, 4, 4, '4', '400.00', '4000.00'),
(null, 5, 5, '5', '500.00', '5000.00'),
(null, 6, 6, '6', '600.00', '6000.00'),
(null, 7, 7, '7', '700.00', '7000.00'),
(null, 8, 8, '8', '800.00', '8000.00'),
(null, 9, 9, '9', '900.00', '9000.00'),
(null, 10, 10, '10', '1000.00', '10000.00');

update clientes
set nome = 'A mais linda'
where id = 1;

update produtos
set decricao = 'iPhone 16'
where id = 4;

update pedido
set valot_t = '150.00'
where id = 8;

update itens_p
set quant = '15'
where id = 6;

DELETE FROM produtos WHERE nome = 'ped1';
DELETE FROM pedido WHERE valot_t = '300';
