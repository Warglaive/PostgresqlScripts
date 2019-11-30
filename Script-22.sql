//first group by queries
select election_year, count(election.candidate), votes from election
group by election_year, votes
having votes >= 20 and count(election.candidate) >= 3


select count(candidate), election_year from election
group by votes
having votes >= 20






count(candidate) >= 3 