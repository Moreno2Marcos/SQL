/* Utilizar uma CTE para trazer todas as informações apenas dos 
clientes que ziferam mais de 5 compras usando o banco de dados
AdventureWorks2017 */

-- cria a CTE com apenas os ID dos clientes com mais de 5 pedidos
WITH CTE as (
	-- (1) agrupa cada cliente de acordo ao seu número de pedidos
	SELECT
		CustomerID
	FROM AdventureWorks2017.Sales.SalesOrderHeader
	GROUP BY CustomerID
	-- (2) filtra apenas os clientes como mais de 5 pedidos
	HAVING COUNT(*) > 5
)

/* referencia a CTE a través de um join para ver todas as informações
de todos os clientes com mais de 5 pedidos */
SELECT
	s.*
FROM AdventureWorks2017.Sales.SalesOrderHeader as s
INNER JOIN CTE as ct
ON s.CustomerID = ct.CustomerID