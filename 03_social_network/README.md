# Setup

The name of this database is `ex_social`.

If you believe there is an error in the results, please post an issue to this repo.

## Questions

1. How many users are there in each house?

**Answer**:

|   house    | count| 
|------------|-------|
| Slytherin  |     2|
| Hufflepuff |     1|
| Gryffindor |     4|
| Ravenclaw  |     2|

2. List all following links that were created before September 1st, 1993

<table border="1">
  <tr>
    <th align="center">user_id</th>
    <th align="center">follows</th>
    <th align="center">date_created</th>
  </tr>
  <tr valign="top">
    <td align="right">2</td>
    <td align="right">1</td>
    <td align="left">1989-01-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">3</td>
    <td align="right">1</td>
    <td align="left">1993-07-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="right">2</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="right">1</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">5</td>
    <td align="right">6</td>
    <td align="left">1986-01-10 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">7</td>
    <td align="right">1</td>
    <td align="left">1990-02-02 00:00:00</td>
  </tr>
</table>

3. List all rows from the `follows` table, replacing both `user_id`s with first name. Hint: it may help to make this a VIEW

<table border="1">
  <tr>
    <th align="center">user_first</th>
    <th align="center">follows_first</th>
    <th align="center">date_created</th>
  </tr>
  <tr valign="top">
    <td align="left">Harry</td>
    <td align="left">Ron</td>
    <td align="left">1993-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ron</td>
    <td align="left">Harry</td>
    <td align="left">1989-01-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie</td>
    <td align="left">Harry</td>
    <td align="left">1993-07-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ron</td>
    <td align="left">Hermonie</td>
    <td align="left">1994-10-10 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie</td>
    <td align="left">Ron</td>
    <td align="left">1995-03-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny</td>
    <td align="left">Ron</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny</td>
    <td align="left">Harry</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry</td>
    <td align="left">Ginny</td>
    <td align="left">1994-04-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry</td>
    <td align="left">Draco</td>
    <td align="left">2000-01-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco</td>
    <td align="left">Harry</td>
    <td align="left">2000-01-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco</td>
    <td align="left">Tom</td>
    <td align="left">1986-01-10 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna</td>
    <td align="left">Harry</td>
    <td align="left">1990-02-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry</td>
    <td align="left">Luna</td>
    <td align="left">1996-10-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry</td>
    <td align="left">Cho</td>
    <td align="left">1993-09-03 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho</td>
    <td align="left">Harry</td>
    <td align="left">1995-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho</td>
    <td align="left">Cedric</td>
    <td align="left">1995-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Cedric</td>
    <td align="left">Cho</td>
    <td align="left">1996-01-10 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna</td>
    <td align="left">Cho</td>
    <td align="left">1993-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie</td>
    <td align="left">Cedric</td>
    <td align="left">1996-05-30 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny</td>
    <td align="left">Cedric</td>
    <td align="left">1996-05-30 00:00:00</td>
  </tr>
</table>

4. List all the following links established before September 1st 1993, but this time use the users first names.

<table border="1">
  <tr>
    <th align="center">user_first</th>
    <th align="center">follows_first</th>
    <th align="center">date_created</th>
  </tr>
  <tr valign="top">
    <td align="left">Ron</td>
    <td align="left">Harry</td>
    <td align="left">1989-01-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie</td>
    <td align="left">Harry</td>
    <td align="left">1993-07-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny</td>
    <td align="left">Ron</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny</td>
    <td align="left">Harry</td>
    <td align="left">1988-08-08 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco</td>
    <td align="left">Tom</td>
    <td align="left">1986-01-10 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna</td>
    <td align="left">Harry</td>
    <td align="left">1990-02-02 00:00:00</td>
  </tr>
</table>
  
5. Give a count of how many people followed each user as of 1999-12-31. Give the result in term of "users full name, number of followers".

<table border="1">
  <tr>
    <th align="center">user_followed_name</th>
    <th align="center">num_followers</th>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="right">5</td>
  </tr>
  <tr valign="top">
    <td align="left">Ron Wesley</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie Granger</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny Weasley</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco Malfoy</td>
    <td align="right">0</td>
  </tr>
  <tr valign="top">
    <td align="left">Tom Riddle</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna Lovegood</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho Chang</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Cedric Diggory</td>
    <td align="right">3</td>
  </tr>
</table>

6. List the number of users each user follows

<table border="1">
  <tr>
    <th align="center">user_name</th>
    <th align="center">num_followed</th>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="right">5</td>
  </tr>
  <tr valign="top">
    <td align="left">Ron Wesley</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie Granger</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny Weasley</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco Malfoy</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Tom Riddle</td>
    <td align="right">0</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna Lovegood</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho Chang</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Cedric Diggory</td>
    <td align="right">1</td>
  </tr>
</table>


7. List all rows from `follows` where someone from one house follows someone from a different house.

<table border="1">
  <tr>
    <th align="center">username</th>
    <th align="center">user_house</th>
    <th align="center">follows_name</th>
    <th align="center">follows_house</th>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
    <td align="left">Draco Malfoy</td>
    <td align="left">Slytherin</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco Malfoy</td>
    <td align="left">Slytherin</td>
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna Lovegood</td>
    <td align="left">Ravenclaw</td>
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
    <td align="left">Luna Lovegood</td>
    <td align="left">Ravenclaw</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
    <td align="left">Cho Chang</td>
    <td align="left">Ravenclaw</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho Chang</td>
    <td align="left">Ravenclaw</td>
    <td align="left">Harry Potter</td>
    <td align="left">Gryffindor</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho Chang</td>
    <td align="left">Ravenclaw</td>
    <td align="left">Cedric Diggory</td>
    <td align="left">Hufflepuff</td>
  </tr>
  <tr valign="top">
    <td align="left">Cedric Diggory</td>
    <td align="left">Hufflepuff</td>
    <td align="left">Cho Chang</td>
    <td align="left">Ravenclaw</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie Granger</td>
    <td align="left">Gryffindor</td>
    <td align="left">Cedric Diggory</td>
    <td align="left">Hufflepuff</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny Weasley</td>
    <td align="left">Gryffindor</td>
    <td align="left">Cedric Diggory</td>
    <td align="left">Hufflepuff</td>
  </tr>
</table>

Note that how you interpret what the columns should be (first name, user id, full name) is left up to interpretation in this question. For example,the question doesn't explicitly ask for the houses of each person. Other answers formats would also be acceptable, as long as they represent the same relationships.

8. We define a _friendship_ as a relationship between two users where both follow each other. The friendship is established when the _later_ of the two links is established. 

HINT: the command `greatest(col1, col2)` will allow you to pick the greatest value from two columns on a row by row basis. The similar `max(col)` will select the maximum value in a the column `col` amongst a group of rows.

<table border="1">
  <tr>
    <th align="center">user_id</th>
    <th align="center">follows</th>
    <th align="center">friendship_established</th>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">2</td>
    <td align="left">1993-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">2</td>
    <td align="right">3</td>
    <td align="left">1995-03-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">4</td>
    <td align="left">1994-04-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">5</td>
    <td align="left">2000-01-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">7</td>
    <td align="left">1996-10-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">8</td>
    <td align="left">1995-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="right">8</td>
    <td align="right">9</td>
    <td align="left">1996-01-10 00:00:00</td>
  </tr>
</table>

Or, if you prefer the names, 

<table border="1">
  <tr>
    <th align="center">user1</th>
    <th align="center">user2</th>
    <th align="center">friendship_established</th>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Ron Wesley</td>
    <td align="left">1993-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Ron Wesley</td>
    <td align="left">Hermonie Granger</td>
    <td align="left">1995-03-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Ginny Weasley</td>
    <td align="left">1994-04-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Draco Malfoy</td>
    <td align="left">2000-01-02 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Luna Lovegood</td>
    <td align="left">1996-10-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Harry Potter</td>
    <td align="left">Cho Chang</td>
    <td align="left">1995-09-01 00:00:00</td>
  </tr>
  <tr valign="top">
    <td align="left">Cho Chang</td>
    <td align="left">Cedric Diggory</td>
    <td align="left">1996-01-10 00:00:00</td>
  </tr>
</table>

9. List all unrequited followings (i.e. where A follows B but B does not follow A)

<table border="1">
  <tr>
    <th align="center">follower</th>
    <th align="center">following</th>
  </tr>
  <tr valign="top">
    <td align="right">3</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">5</td>
    <td align="right">6</td>
  </tr>
  <tr valign="top">
    <td align="right">7</td>
    <td align="right">8</td>
  </tr>
  <tr valign="top">
    <td align="right">3</td>
    <td align="right">9</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="right">9</td>
  </tr>
</table>

If you prefer names:

<table border="1">
  <tr>
    <th align="center">follower</th>
    <th align="center">follows</th>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie Granger</td>
    <td align="left">Harry Potter</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny Weasley</td>
    <td align="left">Ron Wesley</td>
  </tr>
  <tr valign="top">
    <td align="left">Draco Malfoy</td>
    <td align="left">Tom Riddle</td>
  </tr>
  <tr valign="top">
    <td align="left">Luna Lovegood</td>
    <td align="left">Cho Chang</td>
  </tr>
  <tr valign="top">
    <td align="left">Hermonie Granger</td>
    <td align="left">Cedric Diggory</td>
  </tr>
  <tr valign="top">
    <td align="left">Ginny Weasley</td>
    <td align="left">Cedric Diggory</td>
  </tr>
</table> 
