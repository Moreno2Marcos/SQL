-- (1) Copy and paste the link to access the platform
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

-- (2) Select MySQL as server

-- (3) Copy and paste my solution in the box

select
    worker_title as best_paid_titles
from title
where worker_ref_id in 
    (select
        worker_id
    from worker
    where salary = 
        (select
            max(salary)
        from worker))
        
-- (3) Run the query and verify my results