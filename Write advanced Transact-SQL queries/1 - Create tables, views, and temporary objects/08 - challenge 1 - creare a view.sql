/*
CHALLENGE 1: create a view
*/

USE adventureworks
GO

-- create a table with Canadian customers only
CREATE VIEW SalesLT.vCanadaCustomerAdresses AS
	SELECT * FROM SalesLT.Address
	WHERE CountryRegion = N'Canada'
GO

-- alter view
ALTER VIEW SalesLT.vCanadaCustomerAdresses AS
	SELECT 
		AddressLine1
		,City
		,StateProvince
		,CountryRegion
		,PostalCode
	FROM SalesLT.Address
	WHERE CountryRegion = N'Canada'
GO

-- query view
SELECT * FROM SalesLT.vCanadaCustomerAdresses