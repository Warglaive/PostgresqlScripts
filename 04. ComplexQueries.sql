select distinct state."name" from state
join president on president.state_id_born = state.id
where president.id in (select distinct pres_id from pres_marriage
						where pres_marriage.nr_children > 0)