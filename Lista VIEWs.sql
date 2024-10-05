use db_atividade_view;

/*1. Exibir lista de alunos e seus cursos*/
CREATE VIEW vw_alunos_disciplinas_cursos AS
SELECT a.nome AS nome_aluno, d.nome AS nome_disciplina, c.nome AS nome_curso FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
JOIN disciplina d ON m.id_disciplina = d.id_disciplina
JOIN curso c ON d.id_curso = c.id_curso;

SELECT * FROM vw_alunos_disciplinas_cursos;


/*2. Exibir total de alunos por disciplina*/
CREATE VIEW vw_total_alunos_por_disciplina AS
SELECT d.nome AS nome_disciplina, COUNT(m.id_aluno) AS total_alunos
FROM disciplina d
LEFT JOIN matricula m ON d.id_disciplina = m.id_disciplina
GROUP BY d.id_disciplina;

SELECT * FROM vw_total_alunos_por_disciplina;


/*3. Exibir alunos e status das suas matrículas*/
CREATE VIEW vw_alunos_status_matricula AS
SELECT a.nome AS nome_aluno, d.nome AS nome_disciplina, m.status AS status_matricula
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
JOIN disciplina d ON m.id_disciplina = d.id_disciplina;

SELECT * FROM vw_alunos_status_matricula;


/*4. Exibir professores e suas turmas*/
CREATE VIEW vw_professores_turmas AS
SELECT p.nome AS nome_professor, d.nome AS nome_disciplina, t.semestre AS semestre, t.horario AS horario
FROM professor p
JOIN turma t ON p.id_professor = t.id_professor
JOIN disciplina d ON t.id_disciplina = d.id_disciplina;

SELECT * FROM vw_professores_turmas;


/*5. Exibir alunos maiores de 20 anos*/
CREATE VIEW vw_alunos_maiores_20 AS
SELECT nome AS aluno_nome, data_nascimento
FROM aluno
WHERE  YEAR(data_nascimento) <= YEAR(CURRENT_DATE) - 20;

SELECT * FROM vw_alunos_maiores_20;


/*6. Exibir disciplinas e carga horária total por curso*/
CREATE VIEW v_cursos_disciplinas AS
SELECT c.nome AS curso_nome, COUNT(d.id_disciplina) AS quantidade_disciplinas, SUM(c.carga_horaria) AS carga_horaria_total
FROM curso c
LEFT JOIN disciplina d ON c.id_curso = d.id_curso
GROUP BY c.id_curso;

SELECT * FROM v_cursos_disciplinas;


/*7. Exibir professores e suas especialidades*/
CREATE VIEW v_professores_especialidades AS
SELECT p.nome AS professor_nome, p.especialidade
FROM professor p;

SELECT * FROM v_professores_especialidades;

/*8. Exibir alunos matriculados em mais de uma disciplina*/
CREATE VIEW v_alunos_multidisciplinas AS
SELECT a.nome AS aluno_nome, COUNT(m.id_disciplina) AS total_disciplinas
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
GROUP BY a.id_aluno
HAVING COUNT(m.id_disciplina) > 1;

SELECT * FROM v_alunos_multidisciplinas;


/*9. Exibir alunos e o número de disciplinas que concluíram*/
CREATE VIEW v_alunos_disciplinas_concluidas AS
SELECT a.nome AS aluno_nome, COUNT(m.id_disciplina) AS total_disciplinas_concluidas
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
WHERE m.status = 'Concluído'
GROUP BY a.id_aluno;

SELECT * FROM v_alunos_disciplinas_concluidas;


/*10. Exibir todas as turmas de um semestre específico*/
CREATE VIEW v_turmas AS
SELECT t.id_turma, p.nome AS professor_nome, d.nome AS disciplina_nome, t.semestre, t.horario
FROM turma t
JOIN professor p ON t.id_professor = p.id_professor
JOIN disciplina d ON t.id_disciplina = d.id_disciplina;

SELECT * FROM v_turmas;

/*11. Exibir alunos com matrículas trancadas*/
CREATE VIEW alunos_matriculas_trancadas AS
SELECT a.nome
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
WHERE m.status = 'Trancado';

SELECT * FROM alunos_matriculas_trancadas;


/*12. Exibir disciplinas que não têm alunos matriculados*/
CREATE VIEW disciplinas_sem_alunos AS
SELECT d.nome
FROM disciplina d
LEFT JOIN matricula m ON d.id_disciplina = m.id_disciplina
WHERE m.id_disciplina IS NULL;

SELECT * FROM disciplinas_sem_alunos;

/*13. Exibir a quantidade de alunos por status de matrícula*/
CREATE VIEW quantidade_alunos_por_status AS
SELECT m.status, COUNT(m.id_aluno) AS quantidade
FROM matricula m
GROUP BY m.status;

SELECT * FROM  quantidade_alunos_por_status;


/*14. Exibir o total de professores por especialidade*/
CREATE VIEW total_professores_por_especialidade AS
SELECT p.especialidade, COUNT(p.id_professor) AS total
FROM professor p
GROUP BY p.especialidade;

SELECT * FROM total_professores_por_especialidade;

/*15. Exibir lista de alunos e suas idades*/
CREATE VIEW vw_alunos_idade AS
SELECT nome,YEAR(CURDATE()) - YEAR(data_nascimento) - (RIGHT(CURDATE(), 5) < RIGHT(data_nascimento, 5)) AS idade
FROM aluno;

SELECT * FROM vw_alunos_idade;

/*16. Exibir alunos e suas últimas matrículas*/
CREATE VIEW vw_alunos_ultimas_matriculas AS
SELECT a.nome, MAX(m.data_matricula) AS ultima_matricula
FROM aluno a
JOIN matricula m ON a.id_aluno = m.id_aluno
GROUP BY a.id_aluno;

SELECT * FROM vw_alunos_ultimas_matriculas;


/*17. Exibir todas as disciplinas de um curso específico*/
CREATE VIEW vw_disciplinas_curso_eng_software AS
SELECT d.nome AS disciplina, d.descricao
FROM disciplina d
JOIN curso c ON d.id_curso = c.id_curso
WHERE c.nome = 'Engenharia de Software';

SELECT * FROM vw_disciplinas_curso_eng_software;

/*18. Exibir os professores que não têm turmas*/
CREATE VIEW vw_professores_sem_turmas AS
SELECT p.nome
FROM professor p
LEFT JOIN turma t ON p.id_professor = t.id_professor
WHERE t.id_turma IS NULL;

SELECT * FROM vw_professores_sem_turmas;


/*19. Exibir lista de alunos com CPF e email*/
CREATE VIEW vw_alunos AS
SELECT a.nome, a.cpf, a.email
FROM aluno a;

SELECT * FROM vw_alunos;


/*20. Exibir o total de disciplinas por professor*/
CREATE VIEW vw_total_disciplinas_por_professor AS
SELECT p.nome AS nome_professor, COUNT(d.id_disciplina) AS total_disciplinas
FROM professor p
LEFT JOIN turma t ON p.id_professor = t.id_professor
LEFT JOIN disciplina d ON t.id_disciplina = d.id_disciplina
GROUP BY p.id_professor;

SELECT * FROM vw_total_disciplinas_por_professor;