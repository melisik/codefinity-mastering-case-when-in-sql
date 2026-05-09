-- Write your code here
select customer_id,
        sum(case when amount >= 1000 then 1 else 0 end)
from transactions
group by customer_id