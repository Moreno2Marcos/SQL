-- Cria uma tabela de clientes inativos
CREATE TABLE ClientesInativos AS
	SELECT * FROM customer
	WHERE active = 0;

-- Cria uma tabela de clientes ativos
CREATE TABLE ClientesAtivos AS
	SELECT * FROM customer
	WHERE active = 1;

-- Une as tabelas clientes ativos e inativos
SELECT customer_id, first_name, last_name FROM ClientesInativos
UNION
SELECT customer_id, first_name, last_name FROM clientesativos;

-- calcula o número de linhas da tabela resultante de UNION
SELECT
	COUNT( * )
FROM
	( SELECT customer_id, first_name, last_name FROM ClientesInativos
	UNION
	SELECT customer_id, first_name, last_name FROM clientesativos ) AS tbl;
    
-- UNION ALL permite duplicidade
SELECT COUNT( * ) FROM
( SELECT * FROM customer
  UNION ALL
  SELECT * FROM customer ) AS UNIONtable;

 -- UNION não permite duplicidade
SELECT COUNT( * ) FROM
( SELECT * FROM customer
  UNION 
  SELECT * FROM customer ) AS UNIONtable;
  
-- The columns must have similar data types
SELECT title FROM film  -- title : varchar(128)
UNION
SELECT name FROM language;  -- name : char(20)









