USE adventureworks
GO

-- verifica se possui valores vazios
 SELECT CompanyName
 FROM SalesLt.Customer 
 WHERE CompanyName IS NULL

 /* quantos nomes se repetem mais de uma vez */
 SELECT CompanyName
 FROM SalesLt.Customer  
 --WHERE CustomerID BETWEEN 20000 and 40000
 GROUP BY CompanyName
 HAVING COUNT(*) > 1 
 ORDER BY 1

 -- UNION
 SELECT CompanyName 
 FROM SalesLt.Customer  
 WHERE CustomerID BETWEEN 1 and 20000   
 UNION
     SELECT CompanyName 
     FROM SalesLt.Customer  
     WHERE CustomerID BETWEEN 20000 and 40000;

-- UNION ALL
 SELECT CompanyName 
 FROM SalesLt.Customer  
 WHERE CustomerID BETWEEN 1 and 20000   
 UNION ALL
     SELECT CompanyName 
     FROM SalesLt.Customer  
     WHERE CustomerID BETWEEN 20000 and 40000;