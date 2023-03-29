-- recuperar todos os pagamentos mesmo que nao estejam vinculados a um aluguel

SELECT * FROM payment AS P
LEFT JOIN rental AS R ON P.rental_id = R.rental_id;

SELECT 
	rental_id
    ,count(*)
FROM payment
group by rental_id
order by count(*) desc;

select * from payment WHERE rental_id is null;

SELECT * FROM payment AS P
RIGHT JOIN rental AS R ON P.rental_id = R.rental_id;