select "name", party from president
where years_served > 
	(select avg(years_served) 
		from president
		where birth_year>= 1850 and birth_year <= 1900)
order by president."name"