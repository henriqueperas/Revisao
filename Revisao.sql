CREATE DATABASE Revisao
GO
USE Revisao

CREATE TABLE tbAluno(
RA			INT	NOT NULL,
Nome		VARCHAR(100)	,
Idade		INT,
PRIMARY KEY(RA)
)
GO

CREATE TABLE tbDiciplina(
Codigo			INT	NOT NULL,
Nome			VARCHAR(80),
Carga_Horaria	INT,
PRIMARY KEY(Codigo)
)
GO

CREATE TABLE tbCurso(
Codigo	INT	NOT NULL,
Nome	VARCHAR(50),
Area	VARCHAR(50),
PRIMARY KEY(Codigo)
)
GO

CREATE TABLE tbTitulacao(
Codigo	INT	NOT NULL,
Titulo	VARCHAR(40),
PRIMARY KEY(Codigo)
)
GO

CREATE TABLE tbProfessor(
Registro	INT	NOT NULL,
Nome		VARCHAR(100),
Titulacao	INT,
PRIMARY KEY(Registro),
FOREIGN KEY (Titulacao) REFERENCES tbTitulacao(Codigo)
)
GO

CREATE TABLE tbAluno_Diciplina(
CodigoDiciplina	INT	NOT NULL,
RAAluno			INT,
PRIMARY KEY(RAAluno,CodigoDiciplina),
FOREIGN KEY (RAAluno) REFERENCES tbAluno(RA),
FOREIGN KEY (CodigoDiciplina) REFERENCES tbDiciplina(Codigo)
)
GO

CREATE TABLE tbDiciplina_Curso(
CodigoDiciplina		INT	NOT NULL,
CodigoCurso			INT,
PRIMARY KEY(CodigoDiciplina,CodigoCurso),
FOREIGN KEY (CodigoCurso) REFERENCES tbCurso(Codigo),
FOREIGN KEY (CodigoDiciplina) REFERENCES tbDiciplina(Codigo)
)
GO

CREATE TABLE tbProfessor_Diciplina(
CodigoDiciplina		INT	NOT NULL,
RegistroProfessor	INT,
PRIMARY KEY(CodigoDiciplina,RegistroProfessor),
FOREIGN KEY (CodigoDiciplina) REFERENCES tbDiciplina(Codigo),
FOREIGN KEY (RegistroProfessor) REFERENCES tbProfessor(Registro)
)
GO

INSERT INTO tbAluno (RA, Nome, Idade) 
VALUES (3416,	'DIEGO PIOVESAN DE RAMOS',	18),
(3423,	'LEONARDO MAGALHÃES DA ROSA',		17),
(3434,	'LUIZA CRISTINA DE LIMA MARTINELI',	20),
(3440,	'IVO ANDRÉ FIGUEIRA DA SILVA',		25),
(3443,	'BRUNA LUISA SIMIONI',				37),
(3448,	'THAÍS NICOLINI DE MELLO',			17),
(3457,	'LÚCIO DANIEL TÂMARA ALVES',		29),
(3459,	'LEONARDO RODRIGUES',				25),
(3465,	'ÉDERSON RAFAEL VIEIRA',			19),
(3466,	'DAIANA ZANROSSO DE OLIVEIRA',		21),
(3467,	'DANIELA MAURER',					23),
(3470,	'ALEX SALVADORI PALUDO',			42),
(3471,	'VINÍCIUS SCHVARTZ',				19),
(3472,	'MARIANA CHIES ZAMPIERI',			18),
(3482,	'EDUARDO CAINAN GAVSKI',			19),
(3483,	'REDNALDO ORTIZ DONEDA',			20),
(3499,	'MAYELEN ZAMPIERON',				22)
GO 

INSERT INTO tbDiciplina (Codigo, Nome, Carga_Horaria) 
VALUES (1,	'Laboratório de Banco de Dados',	80),
(2,		'Laboratório de Engenharia de Software',80),
(3,		'Programação Linear e Aplicações',		80),
(4,		'Redes de Computadores',				80),
(5,		'Segurança da informação',				40),
(6,		'Teste de Software',					80),
(7,		'Custos e Tarifas Logísticas',			80),
(8,		'Gestão de Estoques',					40),
(9,		'Fundamentos de Marketing',				40),
(10,	'Métodos Quantitativos de Gestão',		80),
(11,	'Gestão do Tráfego Urbano',				80),
(12,	'Sistemas de Movimentação e Transporte',40)
GO 

INSERT INTO tbCurso (Codigo, Nome, Area) 
VALUES (1,	'ADS',			'Ciências da Computação'),
(2,		'Logística',	'Engenharia Civil')
GO 

INSERT INTO tbTitulacao (Codigo, Titulo) 
VALUES (1,	'Especialista'),
(2,	'Mestre'),
(3,	'Doutor')
GO 

INSERT INTO tbProfessor(Registro, Nome, Titulacao) 
VALUES (1111,	'Leandro',	2),
(1112,	'Antonio',		2),
(1113,	'Alexandre',	3),
(1114,	'Wellington',	2),
(1115,	'Luciano',		1),
(1116,	'Edson',		2),
(1117,	'Ana',			2),
(1118,	'Alfredo',		1),
(1119,	'Celio',		2),
(1120,	'Dewar',		3),
(1121,	'Julio',		1)
GO 

INSERT INTO tbAluno_Diciplina(CodigoDiciplina, RAAluno) 
VALUES (1,	3416),
(4,		3416),
(1,		3423),
(2,		3423),
(5,		3423),
(6,		3423),
(2,		3434),
(5,		3434),
(6,		3434),
(1,		3440),
(5,		3443),
(6,		3443),
(4,		3448),
(5,		3448),
(6,		3448),
(2,		3457),
(4,		3457),
(5,		3457),
(6,		3457),
(1,		3459),
(6,		3459),
(7,		3465),
(11,	3465),
(8,		3466),
(11,	3466),
(8,		3467),
(12,	3467),
(8,		3470),
(9,		3470),
(11,	3470),
(12,	3470),
(7,		3471),
(7,		3472),
(12,	3472),
(9,		3482),
(11,	3482),
(8,		3483),
(11,	3483),
(12,	3483),
(8,		3499)
GO 

INSERT INTO tbProfessor_Diciplina(CodigoDiciplina, RegistroProfessor) 
VALUES (1,	1111),
(2,		1112),
(3,		1113),
(4,		1114),
(5,		1115),
(6,		1116),
(7,		1117),
(8,		1118),
(9,		1117),
(10,	1119),
(11,	1120),
(12,	1121)
GO 

INSERT INTO tbDiciplina_Curso(CodigoDiciplina,CodigoCurso) 
VALUES (1,	1),
(2,		1),
(3,		1),
(4,		1),
(5,		1),
(6,		1),
(7,		2),
(8,		2),
(9,		2),
(10,	2),
(11,	2),
(12,	2)
GO 

SELECT * FROM tbAluno
--SELECT * FROM tbDiciplina
--SELECT * FROM tbCurso
--SELECT * FROM tbTitulacao
--SELECT * FROM tbProfessor
--SELECT * FROM tbAluno_Diciplina
--SELECT * FROM tbProfessor_Diciplina
--SELECT * FROM tbDiciplina_Curso

--Como fazer as listas de chamadas, com RA e nome por disciplina ?													
--Fazer uma pesquisa que liste o nome das disciplinas e o nome dos professores que as ministram
SELECT DISTINCT tbProfessor.Nome, tbDiciplina.Nome FROM tbProfessor, tbProfessor_Diciplina, tbDiciplina WHERE tbProfessor.Registro = tbProfessor_Diciplina.RegistroProfessor AND tbProfessor_Diciplina.CodigoDiciplina = tbDiciplina.Codigo
--Fazer uma pesquisa que , dado o nome de uma disciplina, retorne o nome do curso
SELECT DISTINCT tbDiciplina.Nome, tbCurso.Nome FROM tbCurso, tbDiciplina, tbDiciplina_Curso WHERE tbDiciplina.Codigo = tbDiciplina_Curso.CodigoDiciplina AND tbDiciplina_Curso.CodigoCurso = tbCurso.Codigo
--Fazer uma pesquisa que , dado o nome de uma disciplina, retorne sua área					
SELECT DISTINCT tbDiciplina.Nome, tbCurso.Area FROM tbCurso, tbDiciplina, tbDiciplina_Curso WHERE tbDiciplina.Codigo = tbDiciplina_Curso.CodigoDiciplina AND tbDiciplina_Curso.CodigoCurso = tbCurso.Codigo
--Fazer uma pesquisa que , dado o nome de uma disciplina, retorne o título do professor que a ministra													
SELECT DISTINCT tbDiciplina.Nome, tbProfessor.Titulacao FROM tbProfessor, tbDiciplina, tbProfessor_Diciplina WHERE tbProfessor.Registro = tbProfessor_Diciplina.RegistroProfessor AND tbProfessor_Diciplina.CodigoDiciplina = tbDiciplina.Codigo
--Fazer uma pesquisa que retorne o nome da disciplina e quantos alunos estão matriculados em cada uma delas
SELECT DISTINCT tbDiciplina.Nome, COUNT(tbAluno_Diciplina.RAAluno) OVER(PARTITION BY tbDiciplina.Nome) FROM tbAluno, tbAluno_Diciplina, tbDiciplina WHERE tbAluno.RA = tbAluno_Diciplina.RAAluno AND tbAluno_Diciplina.CodigoDiciplina = tbDiciplina.Codigo
--Fazer uma pesquisa que, dado o nome de uma disciplina, retorne o nome do professor.  Só deve retornar de disciplinas que tenham, no mínimo, 5 alunos matriculados
SELECT DISTINCT tbProfessor.Nome, COUNT(tbAluno_Diciplina.RAAluno) OVER(PARTITION BY tbDiciplina.Nome) AS matricula FROM tbAluno, tbAluno_Diciplina, tbProfessor, tbDiciplina, tbProfessor_Diciplina  WHERE tbProfessor.Registro = tbProfessor_Diciplina.RegistroProfessor AND tbProfessor_Diciplina.CodigoDiciplina = tbDiciplina.Codigo AND tbAluno_Diciplina.CodigoDiciplina = tbDiciplina.Codigo AND tbAluno.RA = tbAluno_Diciplina.RAAluno
--Fazer uma pesquisa que retorne o nome do curso e a quatidade de professores cadastrados que ministram aula nele. A coluna de ve se chamar quantidade		COUNT(tbAluno_Diciplina.RAAluno) OVER(PARTITION BY tbCurso.Nome)		
SELECT DISTINCT tbCurso.Nome, COUNT(tbProfessor.Nome) OVER(PARTITION BY tbCurso.Nome) FROM tbCurso, tbDiciplina_Curso, tbDiciplina, tbProfessor_Diciplina, tbProfessor WHERE tbCurso.Codigo = tbDiciplina_Curso.CodigoCurso AND tbDiciplina.Codigo = tbDiciplina_Curso.CodigoDiciplina AND tbDiciplina.Codigo = tbProfessor_Diciplina.CodigoDiciplina AND tbProfessor_Diciplina.RegistroProfessor = tbProfessor.Registro

