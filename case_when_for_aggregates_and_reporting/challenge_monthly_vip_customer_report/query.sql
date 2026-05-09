-- Write your code here
SELECT
  TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    customer_id,
    sum(amount) as total_amount,
    count(*) as transaction_count,
  CASE WHEN 
    sum(amount) >= 500
    and count(*) >= 2
    THEN 'VIP'
    else null
    END AS vip_status  
FROM
  transactions
GROUP BY
  TO_CHAR(transaction_date, 'YYYY-MM'),
    customer_id
HAVING 
    sum(amount) >= 500
    and 
    count(*) >= 2
ORDER BY
  month;