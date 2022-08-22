/*
Source:
https://platform.stratascratch.com/coding/2042-employees-years-in-service?code_type=1
*/

/*
Find employees who have worked for Uber for more than 2 years (730 days) and 
check to see if they're still part of the company. Output 'Yes' if they are and 
'No' if they are not. Use May 1, 2021 as your date of reference when calculating whether 
they have worked for more than 2 years since their hire date.
Output the first name, last name, whether or not the employee is still working for Uber, 
and the number of years at the company.
*/

-- (3) create a temporay table to output the requirements
WITH CTE AS (
	SELECT
		first_name,
		last_name,
		-- (1) calculate the number of days worked
		IIF(termination_date is not null,
			DATEDIFF(day, hire_date, termination_date),
			DATEDIFF(day, hire_date, '2021-05-01')) AS n_days,
		-- (2) verify if the employees is still working
		IIF(termination_date is null,
			'Yes',
			'No') AS still_working
	FROM uber_employees
)

-- (4) visualize the desired output
SELECT
	first_name,
	last_name,
	still_working,
	n_days
FROM CTE
WHERE n_days > 730  -- (5) condition: more than 2 years