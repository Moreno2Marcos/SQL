USE adventureworks
GO

SELECT 
	year
	,Budget
	,LAST_VALUE( budget ) over( order by year asc     
									RANGE BETWEEN 
									UNBOUNDED PRECEDING AND 
									UNBOUNDED FOLLOWING	) as lastValue
	,LAST_VALUE( budget ) over( order by year asc     
									ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) as lastValue2
	,FIRST_VALUE(budget) over(order by year asc) as firstValue
FROM dbo.Budget