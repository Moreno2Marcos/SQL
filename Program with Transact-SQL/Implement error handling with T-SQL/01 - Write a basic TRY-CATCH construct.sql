/*
OBJECTIVE: Write a basic TRY/CATCH construct
*/

-- (1) raise a converion error type intentionally
SELECT CAST(N'Some text' AS INT)

-- (2) use TRY-CATCH construct to deal with the eror in (1)
BEGIN TRY
    SELECT CAST(N'Some text' AS INT);
END TRY
BEGIN CATCH
    PRINT N'Error';
END CATCH