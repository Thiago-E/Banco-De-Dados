--USAR UM BANCO JÁ CRIADO
USE db_escola_T
GO


--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lagrimas, 579 - São Jose');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma (serie, periodo, numero_sala, numero_turma)
VALUES
( 2, 'Tarde', 16, 'SEDUC'),
( 2, 'Manhã', 16, 'SEDUC'),
( 2, 'Noite', 16, 'SEDUC');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, horario, nota,data_prova)
VALUES
('Ana Claudia','Educação Física', '13:15:00', 0,'2025-09-25');
('Rogeria','Matemática', '14:20:00', 10,'2025-09-26');
('Adair','Sociologia', '08:30:00', 10,'2025-09-27');

SELECT * FROM tb_prova;

--TABELA ALUNO
INSERT  INTO tb_aluno ( cpf , nome, matricula , data_nasc, id_escola)
VALUES
('31792996225','Paulo Julio Novaes',1093874612,'2006/07/13',1);

INSERT  INTO tb_aluno ( cpf , nome, matricula , data_nasc, id_escola)
VALUES
('14082326260','Anderson Gabriel Ian Bernardes',9095943924,'2005/02/12',1),
('90537822324','Benedito Calebe Kaique Nogueira',1093874613,'2006/07/13',1),
('03928023250','Sérgio Eduardo Otávio Silveira',9094857617,'2008/08/13',1);


INSERT  INTO tb_aluno ( cpf , nome, matricula , data_nasc, id_escola)
VALUES
('48986512670','Hugo Giovanni Francisco Pires',1093874614,'2009/09/13',1);

SELECT * FROM tb_aluno;

--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET nome = 'Paulo Julio Novaes' , cpf = '31792996225',
WHERE id = 1;

SELECT * FROM tb_aluno