CREATE TABLE pagamentos_diarios AS
	SELECT 
		day(payment_date) as dia
		,sum(amount) as total_recebido
		,avg(amount) as valor_medio_recebido
	FROM payment
	group by day(payment_date)
	order by 1;

SELECT * FROM sakila.pagamentos_diarios;

-- se um novo pagamentos for realizado , este novo registro nao sera inserido na tabela pagamentos_diarios.alter
-- para resolver este detalhe , usar VIEWS!