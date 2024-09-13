USE db_ecommerce_exam;

SELECT item_pedido_id, nome
FROM itens_pedido JOIN produtos
ON itens_pedido.produto_id = produtos.produto_id
;