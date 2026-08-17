-- Write your query below
Select name from customers c 
left join orders o 
on c.id=o.customer_id 
where o.id is NULL