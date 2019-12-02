select president.id, count(pres_hobby) from president
join pres_hobby
on pres_hobby.pres_id = president.id
group by president.id
having count(pres_hobby.hobby) >= 5