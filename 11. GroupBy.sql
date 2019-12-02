select pres_id from pres_marriage
group by pres_id 
having sum(nr_children) >= 2 and count(pres_marriage.spouse_name) > 1
