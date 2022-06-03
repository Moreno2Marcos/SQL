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