-- procura as pessoas cujo nome começa com 'ovi..'
SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%';

-- procura as pessoas cujo nome termina com '..to'
SELECT *
FROM Person.Person
WHERE FirstName like '%to';

-- procura as pessoas cujo nome contém a palavra 'essa'
SELECT *
FROM Person.Person
WHERE FirstName like '%essa%';

-- procura as pessoas cujo nome termina com a palavra '...ro_' :  " _ " : representa um carater
-- o operador LIKE não é case sensitive
SELECT *
FROM Person.Person
WHERE FirstName like '%ro_';