select president."name", president.birth_year, death_age
	from president
	where death_age > 
		(select death_age from president
			where birth_year < 1800 
			order by death_age desc
			limit 1)
		
	
