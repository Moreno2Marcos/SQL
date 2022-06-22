 -- UNION (remove as linhas duplicadas na união das tabelas)
 -- UNION ALL (permite linhas duplicadas na união das tabelas)
 -- aplicado a tabelas que não estão normalizadas (aquelas que tem algum tipo de inconsistência)

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