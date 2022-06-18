-- procura as pessoas cujo nome come�a com 'ovi..'
SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%';

-- procura as pessoas cujo nome termina com '..to'
SELECT *
FROM Person.Person
WHERE FirstName like '%to';

-- procura as pessoas cujo nome cont�m a palavra 'essa'
SELECT *
FROM Person.Person
WHERE FirstName like '%essa%';

-- procura as pessoas cujo nome termina com a palavra '...ro_' :  " _ " : representa um carater
-- o operador LIKE n�o � case sensitive
SELECT *
FROM Person.Person
WHERE FirstName like '%ro_';