# ROW_NUMBER e RANK
SELECT
  category_id,
  price,
  RANK() OVER(partition by category_id ORDER BY price) AS rank,
  ROW_NUMBER() OVER(order by id) AS numero_linha
FROM e_commerce.products
-- where category_id = 0
order by category_id, price;

select 
  row_number() over(partition by category_id)
from `modified-silo-330419.e_commerce.products`
where category_id = 0;

# ROW_NUMBER
select
  CATEGORY_ID,
  RANK() over(order by CATEGORY_ID asc) as rank,
  ROW_NUMBER() over(order by CATEGORY_ID asc) as numero_linha
from e_commerce.products







