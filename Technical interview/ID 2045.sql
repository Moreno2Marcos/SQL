
--SOURCE--
-- https://platform.stratascratch.com/coding/2045-days-without-hiringtermination?code_type=1

--QUESTION--
/* Write a query to calculate the longest period (in days) that the company has gone without
hiring anyone. Also, calculate the longest period without firing anyone. Limit yourself to dates
inside the table (last hiring/termination date should be the latest hiring /termination date from table),
don't go into future. */

--RESOLU��O--

SELECT
	-- (2) calcula o n�mero m�ximo de dias sem contratar alguem
	MAX(t.hire_days) as hiring_without_days,
	-- (2) calcula o n�mero m�ximo de dias sem demtir ningu�m 
	MAX(t.termination_days) as termination_without_days
FROM 
	(SELECT 
		-- (1) calcula a diferen�a em dias entre as datas de contrata��o
		DATEDIFF(day, LAG(hire_date) OVER(ORDER BY hire_date), hire_date) as hire_days,
		-- (1) calcula os dias de servi�o dos empregados
		DATEDIFF(day, hire_date, termination_date) as termination_days
	FROM uber_employees) as t;