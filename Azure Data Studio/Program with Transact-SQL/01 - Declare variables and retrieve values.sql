-- declare a variable and assign it a value
DECLARE @num INT = 5;
-- visualize the variable
SELECT @num AS my_number;


-- declare two variables
DECLARE    
    @num1 INT,
    @num2 INT;
-- assign values to the variables
SET @num1 = 4;
SET @num2 = 6;
-- visualize the sum of the variables
SELECT @num1 + @num2 AS sum;