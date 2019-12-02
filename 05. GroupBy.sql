select election_year, count(candidate) from election
group by election_year
having max(votes) > sum(votes) * 0.80
and election_year > 1850 and count(candidate) > 2