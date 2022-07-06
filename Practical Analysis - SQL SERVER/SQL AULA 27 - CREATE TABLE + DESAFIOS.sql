-- criando tabelas e seus relacionamentos
CREATE TABLE canal (
	canalID int PRIMARY KEY not null,
	nome varchar(150) not null,
	contagemInscritos int default 0,
	dataCriacao datetime not null
);

CREATE TABLE video (
	videoID int PRIMARY KEY not null,
	nome varchar(150) not null,
	visualizacoes int default 0,
	likes int default 0,
	dislikes int default 0,
	duracao int not null,
	canalID int FOREIGN KEY REFERENCES canal(canalID)
);

-- criando tabela e insertando registros
CREATE TABLE aula(
	id int primary key,
	nome varchar(20)
)

-- insere 1 registro
insert into aula(id, nome)
values (1, 'aula 1');

--insere varios registros
insert into aula(id, nome)
values
(2, 'aula 2'),
(3, 'aula 3'),
(4, 'aula 4'),
(5, 'aula 5');

-- insere dados de uma coluna de uma tabela para outra
select * into novaTabela from aula;

/* pratica */

-- 1. crie uma tabela

create table myCourses (
	id tinyint,
	courseNAme varchar(30)
);

-- 2. insira uma linha de dados nela

insert into myCourses(id, courseNAme)
values (1, 'Python');

-- 3. insira 3 linhas de dados ao mesmo tempo
insert into myCourses(id, courseNAme)
values
(2, 'Excel'),
(3, 'Power BI'),
(4, 'SQL Server');

-- 4. crie uma segunda tabela
create table MyCourses2(
	id tinyint,
	courseName varchar(30)
);

-- 5. insira 1 linha na tabela nova
insert into MyCourses2(id, courseName)
values (1, 'Google Sheets');

-- 6. copie os dados da segunda tabela ´para a primeira
insert into myCourses
select *
from MyCourses2;

select *
from myCourses