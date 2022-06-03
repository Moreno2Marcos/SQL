-- Technical case
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

----------------------
-- My solution (MySQL)
----------------------


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