select 
    t1.*,
    round(avg(t1.n_days) over(partition by customer_id), 0) as avg_days
from
    (select
        customer_id,
        created_at,
        lead(created_at) over(partition by customer_id order by created_at) as next_day,
        timestamp_diff(
            lead(created_at) over(partition by customer_id order by created_at),
            created_at,
            day) as n_days
    from e_commerce.orders
    order by customer_id) t1
order by round(avg(t1.n_days) over(partition by customer_id), 0) 