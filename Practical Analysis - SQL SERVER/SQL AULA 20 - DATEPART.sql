-- quero saber o mes de cada ordem de compra
SELECT SalesOrderID, DATEPART(month, OrderDate) as mes
FROM Sales.SalesOrderHeader;

-- quero saber o dia de cada ordem de compra
SELECT SalesOrderID, DATEPART(day, OrderDate) as dia
FROM Sales.SalesOrderHeader;

-- quero saber o ano de cada ordem de compra
SELECT SalesOrderID, DATEPART(year, OrderDate) as dia
FROM Sales.SalesOrderHeader;

-- qual é média mensal das ordens de compra? (usar totalDue)
SELECT DATEPART(month, OrderDate) as month, AVG(totaldue) as monthly_mean
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY 1 asc;

-- qual é média anual das ordens de compra? (usar totalDue)
SELECT DATEPART(year, OrderDate) as year, AVG(totaldue) as yearly_mean
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(year, OrderDate)
ORDER BY 1 asc;

-- qual é média diaria das ordens de compra? (usar totalDue)
SELECT DATEPART(day, OrderDate) as dat, AVG(totaldue) as daily_mean
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(day, OrderDate)
ORDER BY 1 asc;

-- quantos funcionarios fazem aniversário no mês de janeiro do ano 1971?
select COUNT(*)
from HumanResources.Employee
where DATEPART(MONTH, BirthDate) = 3 and DATEPART(year, BirthDate) = 1971;

-- quantos funcionarios fazem aniversário entre os anos 1970 a 1980?
select COUNT(*)
from HumanResources.Employee
where DATEPART(year, BirthDate) between 1970 and 1980;

-- quais os nomes dos funcionarios que foram contratados no ano 2009?
select p.FirstName
from Person.Person p
inner join HumanResources.Employee e on p.BusinessEntityID = e.BusinessEntityID
where datepart(year, e.HireDate) = 2009;