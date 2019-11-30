select name, birth_year from president
join pres_marriage
on president.id = pres_marriage.pres_id
where president.birth_year < 1800 and pres_marriage.nr_children >= 1 and president.party = 'DEMOCRATIC'