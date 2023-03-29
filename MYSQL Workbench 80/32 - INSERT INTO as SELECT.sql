DELETE FROM pagamentos_diarios;

SELECT * FROM pagamentos_diarios;

INSERT INTO pagamentos_diarios (dia, total_recebido, valor_medio_recebido)
	SELECT 
		day(payment_date) as dia
		,sum(amount) as total_recebido
		,avg(amount) as valor_medio_recebido
	FROM payment
	group by day(payment_date);

drop table pagamentos_diarios;