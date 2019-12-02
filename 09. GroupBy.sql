select pres_marriage.pres_id, sum(pres_marriage.nr_children) from pres_marriage
join president on president.id = pres_marriage.pres_id
where pres_marriage.spouse_age > 30 and pres_marriage.nr_children > 0
group by pres_marriage.pres_id
