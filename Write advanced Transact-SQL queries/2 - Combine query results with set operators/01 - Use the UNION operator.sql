USE adventureworks
GO

-- testing "UNION'...
SELECT
	CustomerID
	,CompanyName
	,FirstName + ' ' + LastName AS N'Name'
FROM SalesLT.Customer
WHERE CustomerID BETWEEN 1 AND 9
UNION
SELECT
	CustomerID
	,CompanyName
	,FirstName + ' ' + LastName AS N'Name'
FROM SalesLT.Customer
WHERE CustomerID BETWEEN 10 AND 19
ORDER BY CompanyName

-- testing "UNION ALL'...
CREATE TABLE #tbl1 (
	FirstName VARCHAR(50) NOT NULL
	,LastName VARCHAR(50) NOT NULL
	,CompanyName VARCHAR(50) NOT NULL
)
GO

INSERT INTO #tbl1 (FirstName, LastName, CompanyName)
VALUES
	('Orlando',		'Gee',		'A Bike Store'),
	('Keith',		'Harris',		'Progressive Sports'),
	('Donna',		'Carreras'	,	'Advanced Bike Components')
GO

CREATE TABLE #tbl2 (
	FirstName VARCHAR(50) NOT NULL
	,LastName VARCHAR(50) NOT NULL
	,CompanyName VARCHAR(50) NOT NULL
)
GO

INSERT INTO #tbl2 (FirstName, LastName, CompanyName)
VALUES
	('Dominic',		'Gash',		'Associated Bikes'),
	('Kathleen'	,	'Garza',		'Rural Cycle Emporium'),
	('Katherine',		'Harding',		'Sharp Bikes')
GO

INSERT INTO #tbl2 (FirstName, LastName, CompanyName)
VALUES
	('Orlando',		'Gee',		'A Bike Store')
GO


-- not include duplicated values
SELECT * FROM #tbl1
UNION 
SELECT * FROM #tbl2

-- include duplicated values
SELECT * FROM #tbl1
UNION ALL
SELECT * FROM #tbl2
