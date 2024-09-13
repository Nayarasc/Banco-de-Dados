USE db_prontuario_exam;
SELECT nome, data_consulta, medico, diagnostico, prescricao, observacoes
FROM prontuarios
JOIN pacientes
ON prontuarios.paciente_id = pacientes.paciente_id
;