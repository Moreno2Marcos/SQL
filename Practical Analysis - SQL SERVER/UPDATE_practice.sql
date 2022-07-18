-- cria tabela de id 10310
CREATE TABLE dataset_ID_10310 (
	id TINYINT,
	student VARCHAR(50),
	assignment1 TINYINT,
	assignment2 TINYINT,
	assignment3 TINYINT
);

-- insere registros
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

-- (1) atualiza as notas do nome Karen Austin
UPDATE dataset_ID_10310
	SET assignment1 = 95,
		assignment2 = 90,
		assignment3 = 85
	WHERE student = 'Karen Austin';

-- (2) atualiza as notas dos nomes dos alunos que começam com a letra J
UPDATE dataset_ID_10310
	SET assignment1 = 90,
		assignment2 = 90,
		assignment3 = 90
	WHERE student LIKE 'j%';

-- (3) atualiza apenas as notas do assignment2 que são >= 90 para 100
UPDATE dataset_ID_10310
	SET assignment2 = 100
	WHERE assignment2 >= 90;

-- (4) atualiza os nomes dos estudantes (p/ desconhecido) cuja média de notas do assignment 1 e 3 é >= 75
UPDATE dataset_ID_10310
	SET student = 'desconhecido'
	WHERE (assignment1 + assignment3) / 2 >= 75

/* (5) Atualizar as notas do assignment2 para 60 se as suas 
       respectivas notas são maiores ou iguais
       à média do assignment 1 */

--step 1-- calcula a média do assignment 1
select AVG(assignment1)
from dataset_ID_10310
--step 2-- utiliza a média como condição para atualização
UPDATE dataset_ID_10310
	SET assignment2 = 60
	WHERE assignment2 >= (select AVG(assignment1)
						  from dataset_ID_10310)
