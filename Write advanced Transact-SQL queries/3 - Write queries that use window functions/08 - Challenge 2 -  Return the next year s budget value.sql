USE adventureworks
GO

SELECT 
	[Year]
	,Budget
	,LEAD(Budget, 1) OVER (ORDER BY [Year]) AS 'Next'
FROM dbo.Budget