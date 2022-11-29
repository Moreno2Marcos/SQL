use adventureworks
go

-- get only common rows
select distinct color from SalesLT.Product
where ProductID between 751 and 1000
intersect
select distinct color from SalesLT.Product
where ProductID between 500 and 750

-- get only rows from left query (above)
select distinct color from SalesLT.Product
where ProductID between 751 and 1000
except
select distinct color from SalesLT.Product
where ProductID between 500 and 750