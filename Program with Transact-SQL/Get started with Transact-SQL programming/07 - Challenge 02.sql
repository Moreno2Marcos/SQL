/*
Challenge 2:
The sales manager would like a list of the first 10 customers that
registered and made purchases online as part of a promotion.
You’ve been asked to build the list.
*/

/*
1 - Declare the variables
*/
DECLARE
    @customerID INT =  1,
    @fname NVARCHAR(20),
    @lname NVARCHAR(30);

/*
2 - Construct a terminating loop and Select the customer first name and 
last name and display
*/
WHILE @customerID <= 10
    BEGIN
        SELECT 
            @fname = FirstName,
            @lname = LastName
        FROM SalesLT.Customer
        WHERE CustomerID = @customerID;

        PRINT @fname + N' ' + @lname
        SET @customerID += 1
    END;

