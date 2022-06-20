# RANK

SELECT
  customer_id,
  created_at,
  RANK() OVER(PARTITION BY customer_id ORDER BY created_at) AS rank
FROM e_commerce.orders
WHERE status = "entregue"
ORDER BY customer_id;

# Quanto tempo se passou (dias) desde a primeira comprar até a decima primera compra de cada cliente

select
    customer_id,
    timestamp_diff(
        max(created_at),
        min(created_at),
        day) as n_days
from 
    (select 
      customer_id,
      created_at,
      rank() over(partition by customer_id order by created_at) as rank
    from e_commerce.orders
    order by customer_id) t
where rank between 1 and 11
group by customer_id
order by n_days asc;

