select distinct(hobby) from pres_hobby 
join president on president.id = pres_hobby.pres_id
where president."name" not in (select distinct(president."name") from president
							join election on president."name" = election.candidate
							where election.winner_loser_indic = 'L')
order by hobby asc