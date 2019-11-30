select pres_marriage.spouse_name from president
join pres_marriage
on president.id = pres_marriage.pres_id
join state
on president.state_id_born = state.id
where state.year_entered > 1850