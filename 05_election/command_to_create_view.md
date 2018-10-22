
# Create tidy dataset

For reference, here is one way of creating the "tidy" view referenced in the readme:

```sql
CREATE VIEW tidy_election AS (
  (SELECT state, democrat_votes AS votes, 'democrat' AS party, year FROM election) 
  UNION 
  (SELECT state, republican_votes AS votes, 'republican' AS party, year FROM election) 
  UNION 
  (SELECT state, other_votes AS votes, 'other' AS party, year FROM election)
);
```

Where this pays off is when determining the winner for each state. Instead of using a CASE WHEN statement (which can be tricky when looking at three conditions) you can get the winner from a group by:

```sql
SELECT a.year, a.state, a.party AS winner FROM tidy_election a WHERE 
  (select count(*) from tidy_election b where a.year=b.year and a.state=b.state and b.votes > a.votes) = 0
```  

or using a window function

```sql
SELECT year, state, winner FROM 
  (SELECT year, state, party AS winner, rank() OVER (PARTITION BY year, state ORDER BY votes DESC) AS rank FROM tidy_election) tmp 
WHERE tmp.rank = 1;
```
