-- Write your query below
--Select * from
--(Select *,DENSE_RANK(score) over(partition by student_id order by score desc)rnk from exam_results)t
--where rnk=1

select student_id,exam_id,score from
(Select student_id,exam_id,score,Row_number() over(partition by student_id order by score desc, exam_id asc) rnk
from exam_results)t
where rnk = 1
