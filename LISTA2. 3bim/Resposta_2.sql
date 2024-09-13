USE db_crm_exam;

SELECT nome, cliente_id as "id do cliente"
FROM campanhas
JOIN participacoes_campanha
ON campanhas.campanha_id = participacoes_campanha.campanha_id
;