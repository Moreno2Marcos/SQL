 -- UNION (remove as linhas duplicadas na uni�o das tabelas)
 -- UNION ALL (permite linhas duplicadas na uni�o das tabelas)
 -- aplicado a tabelas que n�o est�o normalizadas (aquelas que tem algum tipo de inconsist�ncia)

 -- exemplo 1
 SELECT [ProductID], [Name], [ProductNumber]
 FROM Production.Product
 WHERE Name like '%Chain%'
 UNION
 SELECT [ProductID], [Name], [ProductNumber]
 FROM Production.Product
 WHERE Name like '%Decal%';

 -- exemplo 2
 SELECT FirstName, Title, MiddleName
 FROM Person.Person
 WHERE Title = 'Mr.'
 UNION
 SELECT FirstName, Title, MiddleName
 FROM Person.Person
 WHERE MiddleName = 'A';

  -- exemplo 2 - remove duplicados
 SELECT FirstName, Title, MiddleName
 FROM Person.Person
 WHERE Title = 'Mr.'
 UNION ALL
 SELECT FirstName, Title, MiddleName
 FROM Person.Person
 WHERE MiddleName = 'A';