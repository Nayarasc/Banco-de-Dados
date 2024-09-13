USE db_financas_exam;
SELECT nome, contas.tipo as "tipo_conta", saldo, data_criacao, transacoes.tipo as "tipo_transacao", valor, data_transacao, descricao
FROM contas LEFT JOIN transacoes
ON contas.conta_id = transacoes.conta_id
;