 -- SELF JOIN é usado Quando é preciso filtrar dados usando a mesma tabela
 -- Tem que ser usado o ALIAS (as ...) -  dando um apelido para tabela
 -- outra definicao: uma tabela que se junta a ela mesma!

 /* sintaxis:
	SELECT nome_coluna
	FROM nome_tabela A, nome_tabela B --- B: alias
	WHERE CONDICAO */

-- EDA
SELECT TOP 5 *
FROM Customers;

/* listar todos os clientes que moram na mesma região */

select ContactName, Region
from Customers
where region is not null
order by Region;

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region; -- and A.region is not null and B.Region is not null;

/* encontrar (nome e data de contratacao) de todos os funcionarios que foram contratados no mesmo ano */
-- correlacao?!

select *
from Employees;

select FirstName, HireDate
from Employees
order by  DATEPART(year, HireDate) asc;

select A.FirstName, A.HireDate, B.FirstName, B.HireDate
from Employees A, Employees B
where DATEPART(year, A.HireDate) = DATEPART(year, B.HireDate);

/* Na tabela detalhe do pedido (order details), quais produtos tem o mesmo percentual de desconto */

-- para mim faz mais sentido esta forma de usar SELFJOIN
select distinct A.ProductID, B.Discount
from [Order Details] A, [Order Details] B
where A.Discount = B.Discount;

-- do que:
select A.ProductID, A.Discount, B.ProductID, B.Discount
from [Order Details] A, [Order Details] B
where A.Discount = B.Discount;