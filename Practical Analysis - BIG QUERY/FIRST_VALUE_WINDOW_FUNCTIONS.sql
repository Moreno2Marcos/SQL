# FIRST VALUE

#1- Retornar a primeira compra para cada (cliente) da tabela ORDERS 
#- [calcular o numero de dias de cada compra de cada cliente em relacao a sua primiera compra)
# So pedidos com status = entregue. Retornar uma tabela no schema:
# |customer_id|	created_at|	primeira_compra	| dias_desde_primeira_diferenca
SELECT
  customer_id,
  created_at,
  FIRST_VALUE(created_at) OVER (PARTITION BY customer_id ORDER BY created_at) AS primeira_compra,
  TIMESTAMP_DIFF(
    created_at, 
    FIRST_VALUE(created_at) OVER (PARTITION BY customer_id ORDER BY created_at),
    DAY) AS dias_desde_primeira_diferenca
FROM e_commerce.orders
WHERE status = "entregue"
ORDER BY customer_id, created_at;

#--- SEM WINDOW FUNCTIONS
select 
    o.customer_id,
    o.created_at,
    t.primiera_compra,
    timestamp_diff(o.created_at, t.primiera_compra, day) as dias_desde_primeira_diferenca
from e_commerce.orders as o
inner join 
    (select
        customer_id,
        min(created_at) as primiera_compra
    from e_commerce.orders
    where status = "entregue"
    group by customer_id) as t
on o.customer_id = t.customer_id
where o.status = "entregue"
order by o.customer_id, o.created_at;
