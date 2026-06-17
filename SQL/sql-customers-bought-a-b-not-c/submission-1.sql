-- Write your query below
Select c.customer_id, c.customer_name
from customers c 
left join orders o 
on c.customer_id=o.customer_id
Where o.product_name IN ('A','B','C')
Group by c.customer_id, c.customer_name
Having Count(*) Filter (where o.product_name='A')>0
AND count(*) Filter (where o.product_name = 'B')>0
AND Count (*) Filter (where o.product_name ='C')=0
order by c.customer_name