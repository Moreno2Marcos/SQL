-- ordena pelo nome da pessoa (ascendente)
SELECT *
FROM Person.Person
ORDER BY FirstName;

-- ordena pelo nome da pessoa (decrecente)
SELECT *
FROM Person.Person
ORDER BY FirstName desc;

-- ordena pelo nome  e sobre nome da pessoa
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName, LastName desc;

-- ordena pelo middle name (asc) e mostrar nome e sobrenome da pessoa
SELECT FirstName, LastName
FROM Person.Person
WHERE MiddleName is not NULL
ORDER BY MiddleName;

/* Obter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato */
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc;

/* Obter o nome e numero do produto dos produtos que tem o ProductID entre 1 e 4 */
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID;