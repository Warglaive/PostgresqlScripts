select state."name", state.year_entered, president."name" from state
join president
on president.state_id_born = state.id
where state.year_entered > 1800  and president.years_served >= 4