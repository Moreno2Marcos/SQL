-- cria a tabela de id 10310
CREATE TABLE dataset_ID_10310 (
	id TINYINT,
	student VARCHAR(50),
	assignment1 TINYINT,
	assignment2 TINYINT,
	assignment3 TINYINT
);

-- insere os registros
INSERT INTO dataset_ID_10310(id, student, assignment1, assignment2, assignment3)
	VALUES
	(1,'Karen Austin',90,98,80),
	(2,'Matthew Ward',85,90,70),
	(3,'John Miranda',87,75,90),
	(4,'Scott Taylor',60,55,70),
	(5,'Tom Saunders',80,88,90),
	(6,'Natalie Palmer',55,70,65),
	(7,'James Burgess',72,70,75),
	(8,'Tracie Lopez',89,85,70),
	(9,'Donna Jimenez',91,90,98),
	(10,'Rachael Smith',76,66,80)

-- visualiza a tabela criada
select * from dataset_ID_10310;

/* (1) Apagar as linhas cujo valor no assignment1 é maior ou igual a 80 */
DELETE FROM dataset_ID_10310
	WHERE assignment1 >= 80

/* (2) Apagar os alunos cuja (no assignment 1) nota 
       seja maior que a média geral dos alunos no
	   assignment3*/

-- step 1-- calcula a média
select AVG(assignment3)
from dataset_ID_10310;
-- step 2-- usa a média para filtrar
DELETE FROM dataset_ID_10310
	WHERE assignment1 > 
						(select AVG(assignment3)
						from dataset_ID_10310)

/* (3) Apagar os registros cujos valores no assigment2 sejam menores que as notas
       no assignment1 e assignment3 respectivamente*/

DELETE FROM dataset_ID_10310
	WHERE (assignment1 < assignment2) AND (assignment1 < assignment3)

select * from dataset_ID_10310