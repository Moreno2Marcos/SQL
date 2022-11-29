USE adventureworks
GO

-- Prepare a table
DECLARE @t1 AS table
	(Name nvarchar(30) NOT NULL);
-- populate it
INSERT INTO @t1 ([Name])
    VALUES
        (N'Daffodil'),
        (N'Camembert'),
        (N'Neddy'),
        (N'Smudge'),
        (N'Molly');
-- visualize it
select name from @t1

-- the same as before...
DECLARE @t2 AS table
	([Name] nvarchar(30) NOT NULL);

INSERT INTO @t2 ([Name])
    VALUES
        (N'Daffodil'),
        (N'Neddy'),
        (N'Molly'),
        (N'Spooky');

select name from @t2

-- combine them with INTERSECT operator
--SELECT [Name]
--FROM @t1
--INTERSECT
--SELECT [Name]
--FROM @t2
--ORDER BY [Name];

-- combine them with EXCEPT operator
SELECT [Name]
FROM @t1
EXCEPT
SELECT [Name]
FROM @t2
ORDER BY [Name];