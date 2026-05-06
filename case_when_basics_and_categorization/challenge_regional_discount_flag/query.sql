SELECT
    *,
    CASE
        when region in ('East', 'West') then 'Yes'
        else 'No'
    END AS discount_eligible
FROM sales;