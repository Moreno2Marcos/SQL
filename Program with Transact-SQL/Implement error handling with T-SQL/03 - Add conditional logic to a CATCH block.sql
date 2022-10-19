/*
OBJECTIVE: Add conditional logic to a CATCH block
*/

-- (1) create a variable to originate an error
DECLARE @num VARCHAR(20) = 'A';

-- (2) deal with the error introduced by (1)
BEGIN TRY
    PRINT 5. / CAST(@num AS NUMERIC(10, 4));  -- error here!
END TRY
BEGIN CATCH
    IF ERROR_NUMBER() IN (245, 8114)
        BEGIN
            PRINT 'Handling conversion error...'
        END
    ELSE
        BEGIN
            PRINT 'Handling non-conversion error...'
        END
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error messagen: ' + ERROR_MESSAGE();
END CATCH
GO

/* changing the value of the variable @num */

-- (1) create a variable to originate an error
DECLARE @num VARCHAR(20) = '0';

-- (2) deal with the error introduced by (1)
BEGIN TRY
    PRINT 5. / CAST(@num AS NUMERIC(10, 4));  -- error here!
END TRY
BEGIN CATCH
    IF ERROR_NUMBER() IN (245, 8114)
        BEGIN
            PRINT 'Handling conversion error...'
        END
    ELSE
        BEGIN
            PRINT 'Handling non-conversion error...'
        END
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error messagen: ' + ERROR_MESSAGE();
END CATCH
GO