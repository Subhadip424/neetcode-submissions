-- Write your query below
Select employee_id,
    case
        when employee_id %2 != 0 AND name NOT LIKE 'M%' Then salary
        Else 0
    END As Bonus
from employees order by employee_id
