SELECT
    id,
    product,
    quantity,
    price,
    region,
    case when
    price > 700 then 'Premium'
    when price >= 300 then 'Standard'
    else 'Budget'
    end as price_tier
FROM
    sales;