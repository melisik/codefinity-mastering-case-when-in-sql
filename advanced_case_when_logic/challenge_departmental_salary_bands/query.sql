SELECT
    id,
    name,
    department,
    salary,
    years_at_company,
    case when salary < 60000 then 'Junior'
    when salary < 90000 then 'Mid'
    else 'Senior'
    end as salary_band
    -- Write your code here
FROM employees;