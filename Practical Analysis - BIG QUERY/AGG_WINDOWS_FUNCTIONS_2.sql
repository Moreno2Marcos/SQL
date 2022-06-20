select 
  customer_id,
  created_at,
  sum(quantity) over(partition by customer_id) total_products,
  sum(total_price) over(partition by customer_id) total_revenue
from e_commerce.items i
inner join e_commerce.orders o
on i.order_id = o.id
order by customer_id