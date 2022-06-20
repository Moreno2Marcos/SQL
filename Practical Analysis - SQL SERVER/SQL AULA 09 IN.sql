-- encontra as pessoas com BusinessEntityID de 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID in (2, 13, 7);

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2 or BusinessEntityID = 13 or BusinessEntityID = 7;

-- encontra as pessoas que não tenham BusinessEntityID de 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID not in (2, 13, 7);

-- seleciona todos os produtos com color SILVER ou BLACK
SELECT *
FROM Production.Product
WHERE Color in ('silver', 'black');

-- seleciona todos os produtos que não sejam color BLACK ou SILVER
SELECT *
FROM Production.Product
WHERE Color not in ('black', 'silver');

-- seleciona os empregados com job titles: Chief Executive Officer, Engineering Manager, Design Engineer
SELECT *
FROM HumanResources.Employee
WHERE JobTitle in ('Chief Executive Officer', 'Engineering Manager', 'Design Engineer');