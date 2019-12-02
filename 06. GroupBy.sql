select president.id as pres_id, max(pres_marriage.nr_children) as maxchild, min(pres_marriage.nr_children) as minchild from president
join pres_marriage
on president.id = pres_marriage.pres_id
group by president.id
having count(pres_marriage) > 1
order by president.id asc