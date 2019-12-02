select election_year, count(candidate) as candidate, min(votes) as minimum_votes
from election
group by election_year
having count(candidate) >= 3 and min(votes) >= 20



