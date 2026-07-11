-- Write your query below
Select e.left_operand,e.operator,e.right_operand,
    case e.operator
        when '>' THEN (lv.value>rv.value)
        when '=' THEN (lv.value=rv.value)
        when '<' THEN (lv.value<rv.value)
    END as value
from expressions e 
join variables lv on lv.name = e.left_operand
join variables rv on rv.name = e.right_operand