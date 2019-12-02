select death_age, count(president.id) from president
group by death_age
having death_age > 85 