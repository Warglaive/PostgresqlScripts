select pres_id from pres_marriage
group by pres_id
having sum(spouse_age) >= 30 and count(spouse_name) = 1
order by pres_id