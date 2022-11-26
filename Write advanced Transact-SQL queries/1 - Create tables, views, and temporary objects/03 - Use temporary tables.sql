USE adventureworks
GO

-- create a local temporary table (ltt)
CREATE TABLE #Products (
	ProductID INT PRIMARY KEY NOT NULL,
	ProductName VARCHAR(50) NOT NULL,
	ProductDescription VARCHAR(MAX) NOT NULL
)
GO

-- insert data into ltt
INSERT #Products (ProductID, ProductName, ProductDescription)
VALUES (1, 'The temporary time leap', 'A novel about temporary time leaping.'); 
GO

-- read data from ltt
select * from #Products

--=====================================================================

-- create a global temporary table (gtt)
CREATE TABLE ##Products (
	ProductID INT PRIMARY KEY NOT NULL,
	ProductName VARCHAR(50) NOT NULL,
	ProductDescription VARCHAR(MAX) NOT NULL
)
GO

-- insert data into gtt
INSERT ##Products (ProductID, ProductName, ProductDescription)
VALUES (1, 'gtt - The temporary time leap', 'gtt - A novel about temporary time leaping.'); 
GO

-- read data from gtt
select * from ##Products