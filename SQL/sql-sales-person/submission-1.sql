-- Write your query below
select s.name from sales_person s left join
(Select c.com_id, c.name , o.order_id, o.sales_id 
from company c join orders o on c.com_id = o.com_id
where c.com_id = 1
) T
on s.sales_id=T.sales_id where T.sales_id is null


-- Select c.com_id, c.name , o.order_id, o.sales_id 
-- from company c left join orders o on c.com_id = o.com_id
-- where c.com_id = 1