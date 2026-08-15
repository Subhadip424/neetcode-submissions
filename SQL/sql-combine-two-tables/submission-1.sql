-- Write your query below
select P.first_name, P.last_name, A.city, A.state from Person P left join Address A on P.person_id = A.person_id