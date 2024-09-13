USE db_logistica_exam;
SELECT produtos.nome, descricao, preco, estoque, fornecedores.nome
FROM produtos
LEFT JOIN fornecedores
ON produtos.fornecedor_id = fornecedores.fornecedor_id
;