/* Descobrir quais pessoas t�m cart�o de cr�dito registrado? */

-- EDA
SELECT TOP 3 *
FROM Sales.PersonCreditCard;

SELECT TOP 3 *
FROM Person.Person;

SELECT *
FROM Sales.PersonCreditCard as cc
INNER JOIN Person.Person as p ON cc.BusinessEntityID = p.BusinessEntityID;  -- 19118 rows

/* Descobrir quais pessoas n�o t�m cart�o de cr�dito registrado? */
SELECT *
FROM Sales.PersonCreditCard as cc
RIGHT OUTER JOIN Person.Person as p ON cc.BusinessEntityID = p.BusinessEntityID  -- 19972 rows
WHERE cc.BusinessEntityID IS NULL;

-- sem registros (n�o faz sentido ter cartoes registrados sen nomes associados!)
SELECT *
FROM Sales.PersonCreditCard as cc
LEFT OUTER JOIN Person.Person as p ON cc.BusinessEntityID = p.BusinessEntityID
WHERE p.BusinessEntityID IS NULL;
