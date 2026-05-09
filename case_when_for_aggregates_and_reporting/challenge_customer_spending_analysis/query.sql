-- Write your code here
SELECT customer_id,
sum(case when transaction_type = 'purchase' then amount else 0 end) as total_purchase,
sum(case when transaction_type = 'refung' then amount else 0 end) as total_refund
    from transactions
group by customer_id


