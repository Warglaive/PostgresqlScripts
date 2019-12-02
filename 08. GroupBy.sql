select president.id, round(avg(pres_marriage.nr_children)) from president
join pres_marriage
on pres_marriage.pres_id = president.id
where pres_marriage.spouse_age < 30
group by president.id
having avg(pres_marriage.nr_children) > 4
order by president.id
