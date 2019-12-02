select max(VotesDiff) from 
		(select election_year, max(votes) - min(votes) as VotesDiff 
		from election
		group by election_year
		having count(candidate) = 2 and election_year > 1900) as gg
