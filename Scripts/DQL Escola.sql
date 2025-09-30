USE db_escola_T


--Listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno

--Lista as matriculas dos alunos em ordem crescente
SELECT matricula
FROM tb_aluno
ORDER BY nome ASC;

--listar os id's dos 3 primeiros alunos que foram recem cadastrados
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--Lista todos os alunos

SELECT TOP 5 nome
FROM tb_aluno
ORDER BY id DESC;

--Lista de todos os alunos que tem o nome Eloisa

SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'Paulo'

--Lista o nome da escola Torloni
SELECT nome
FROM tb_escola

--Mostre as turmas com o nome SEDUC
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC'

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre quantos alunos existe na base
SELECT COUNT(nome) AS qtd_alunos FROM tb_aluno

--Mostre os alunos mais velhos
SELECT MAX(data_nasc) AS idade_mais_velha FROM tb_aluno

--Exibaa idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_novo
FROM tb_aluno


SELECT TOP 1 nome, data_nasc

--Exiba a meddia aritmedica de notas 
SELECT AVG)nota) AS media_nota FROM tb_prova

--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_turma;

SELECT * FROM tb_turma;

--Mostre os nomes dos alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome;
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmastem no periodo da tarde
SELECT COUNT(id)
FROM tb_turma
WHERE periodo = 'Tarde';