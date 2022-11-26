-- define DB used
USE adventureworks
GO

-- create schema of the table
CREATE TABLE [MorenoM].Product (
	ProductID INT PRIMARY KEY NOT NULL,
	ProductName VARCHAR(50) NOT NULL,
	ProductDescription VARCHAR(MAX) NOT NULL
)
GO

-- insert 1 row to the table
INSERT [MorenoM].Products (ProductID, ProductName, ProductDescription)
VALUES (1, 'The brown fox and the yellow bear', 'A popular book for children.');
GO

-- visualize table
SELECT * FROM MorenoM.Products
GO