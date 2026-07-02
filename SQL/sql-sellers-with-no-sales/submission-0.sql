-- Write your query below
Select s.seller_name from seller s 
left join orders o on s.seller_id = o.seller_id
AND date_part('year', o.sale_date) = 2020
where o.order_id IS NULL 
order by s.seller_name ASC





