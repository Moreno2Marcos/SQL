USE adventureworks
GO

/*
demonstrate the LAG window function
*/

 CREATE TABLE dbo.Budget
 (
     [Year] int NOT NULL PRIMARY KEY,
     Budget int NOT NULL
 );
 GO

 INSERT INTO dbo.Budget ([Year], Budget)
     VALUES
         (2017, 14600),
         (2018, 16300),
         (2019, 18200),
         (2020, 21500),
         (2021, 22800);
GO

SELECT 
	[Year]
	,Budget
	,LAG(Budget, 1, 0) OVER (ORDER BY [Year]) AS 'Previous'
FROM dbo.Budget
ORDER BY [Year]; 

