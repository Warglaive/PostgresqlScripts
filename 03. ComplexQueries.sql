select distinct state."name" from state 
join president on president.state_id_born = state.id
where president.state_id_born not in(select distinct president.state_id_born from president
									join election on election.candidate = president."name"
									where election.winner_loser_indic = 'L')
order by state."name"