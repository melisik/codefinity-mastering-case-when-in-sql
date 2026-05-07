SELECT
  id,
  name,
  department,
  salary,
  years_at_company,
  case
    when name is not null and department is not null and salary is not null and years_at_company is not null then 'Complete'
    else 'Incomplete'
  end as data_status
FROM employees;