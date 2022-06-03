-- (0) Create an account
https://platform.stratascratch.com/login

-- (1) Copy and paste the link below to access the technical challenge
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

-- (2) Select PostgreeSQL as server (important)

-- (3) Copy and paste my "FINAL ANSWER" in the box

-- STEP 1
-- find the maximum salary
select
    max(salary)
from worker)

-- STEP 2
-- filter workers with maximum salary
select
    worker_id
from worker
where salary = 
    -- find the maximum salary
    (select
        max(salary)
    from worker)

-- STEP 3 (FINAL ANSWER!)

-- find the titles of workers with the highest salary
select
    worker_title as best_paid_titles
from title
where worker_ref_id in 
    -- filter workers with the highest salary
    (select
        worker_id
    from worker
    where salary = 
        -- find the the highest salary
        (select
            max(salary)
        from worker))
        
-- (3) Run the query and verify my results