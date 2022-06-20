-- listar os produtos cujo custo está entre 1000 e 1500
SELECT *
FROM Production.Product
WHERE ListPrice between 1000 and 1500;

-- listar os produtos cujo custo NÃO está entre 1000 e 1500
SELECT *
FROM Production.Product
WHERE ListPrice not between 1000 and 1500;

-- quantas pessoas foram contratadas entre o ano 2009 a 2010
SELECT *
FROM HumanResources.Employee
WHERE DATEPART(year, HireDate) between 2009 and 2010
ORDER BY HireDate;

SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/12/31'
ORDER BY HireDate;