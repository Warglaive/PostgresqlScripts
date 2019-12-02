select election_year, sum(votes) as votes_cast from election
where election_year > 1900
group by election_year
having count(candidate) >= 3
order by votes_cast 