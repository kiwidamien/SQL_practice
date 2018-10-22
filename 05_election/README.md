# Election data

The database for these excercises is called `ex_election`.

The process for obtaining this data is described in [this blog post](https://kiwidamien.github.io/munging-with-multiindices-election-data.html).

This is a copy of presidential election results per state from 1952 to 2016. It is a medium sized dataset (i.e. it is probably difficult to do the queries "by hand", but it isn't large enough to stress test your queries).

If you think you have found an error in the questions below, please open a Github Issue.

## Note on table format

Note that some of these questions would be considerably easier if the election data was _tidy_. At the moment, the rows in the election data take the form
```
 state | democrat_votes | republican_votes | other_votes | year 
-------+----------------+------------------+-------------+------
 AL    |         275075 |           149231 |           0 | 1952
 AR    |         226300 |           177155 |           0 | 1952
 AZ    |         108528 |           152042 |           0 | 1952
 CA    |        2257646 |          3035587 |           0 | 1952
```

A tidy dataset would take the form:
```
 state | votes  |   party    | year 
-------+--------+------------+------
 AL    |      0 | other      | 1952
 AL    | 149231 | republican | 1952
 AL    | 275075 | democrat   | 1952
 AR    | 177155 | republican | 1952
 AR    | 226300 | democrat   | 1952
 AR    |      0 | other      | 1952
 AZ    | 152042 | republican | 1952
 AZ    | 108528 | democrat   | 1952
 AZ    |      0 | other      | 1952
 CA    |      0 | other      | 1952
```

Sadly, we don't get to choose the format of the data. However, you could transform the data to look like this using a VIEW (hint: see the UNION command). For reference, the instructions for creating this view are included in this subdirectory, but you should try making it yourself first.

It is not required to transform your data this way, but you might find some of the queries easier. 

## Questions

1. **How many candidates are in the candidate table for the 2000 election?**

Answer: 3 (Al Gore, Ralph Nader, George W. Bush)

2. **How many candidates are in the candidate table for each election from 1984 to 2016?**

<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">count</th>
  </tr>
  <tr valign="top">
    <td align="right">1984</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">1988</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">1992</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="right">1996</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="right">2000</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="right">2004</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">2008</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">2012</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="right">3</td>
  </tr>
</table>


3. **For each election from 1984 to 2016, give the party that won the popular vote (i.e. the most votes, not the most electoral college seats)**

<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">total_democrat</th>
    <th align="center">total_republican</th>
    <th align="center">total_other</th>
    <th align="center">winner</th>
  </tr>
  <tr valign="top">
    <td align="right">1984</td>
    <td align="right">37577352</td>
    <td align="right">54455472</td>
    <td align="right">0</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">1988</td>
    <td align="right">41809476</td>
    <td align="right">48886597</td>
    <td align="right">0</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">1992</td>
    <td align="right">44909806</td>
    <td align="right">39104550</td>
    <td align="right">19743821</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">1996</td>
    <td align="right">47400125</td>
    <td align="right">39198755</td>
    <td align="right">8085402</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2000</td>
    <td align="right">51009810</td>
    <td align="right">50462412</td>
    <td align="right">2883443</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2004</td>
    <td align="right">59027115</td>
    <td align="right">62039572</td>
    <td align="right">0</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">2008</td>
    <td align="right">69499428</td>
    <td align="right">59950323</td>
    <td align="right">0</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2012</td>
    <td align="right">65918507</td>
    <td align="right">60934407</td>
    <td align="right">0</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="right">65853625</td>
    <td align="right">62985106</td>
    <td align="right">4489233</td>
    <td align="left">democrat</td>
  </tr>
</table>

Note that the question didn't ask for the total number of votes each party got. You only need the rows `year` and `winner`.


4. **Extension of previous question: for each election from 1984 to 2016, give the party that won the popular vote and the margin (i.e. the amount that the winning party got over the party that came in second place).** You can assume that the third party votes ("Other") are irrelevant, and just compare Democrats and Republicans.


<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">margin</th>
    <th align="center">winner</th>
  </tr>
  <tr valign="top">
    <td align="right">1984</td>
    <td align="right">16878120</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">1988</td>
    <td align="right">7077121</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">1992</td>
    <td align="right">5805256</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">1996</td>
    <td align="right">8201370</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2000</td>
    <td align="right">547398</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2004</td>
    <td align="right">3012457</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="right">2008</td>
    <td align="right">9549105</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2012</td>
    <td align="right">4984100</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="right">2868519</td>
    <td align="left">democrat</td>
  </tr>
</table>

HINT: You might want to create a view with a new column for who won each state.

5. **Which states have had fewer than 3 democratic victories (i.e. fewer than 3 elections where the democrats got the majority of the votes in that state) since 1952?**

<table border="1">
  <tr>
    <th align="center">state</th>
    <th align="center">winner</th>
    <th align="center">num_democratic_victories</th>
  </tr>
  <tr valign="top">
    <td align="left">AK</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">AZ</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">ID</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">IN</td>
    <td align="left">democrat</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">KS</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">MT</td>
    <td align="left">democrat</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">ND</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">NE</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">OK</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">SD</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">UT</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">WY</td>
    <td align="left">democrat</td>
    <td align="right">1</td>
  </tr>
</table>

6. **Which states have had fewer than 3 republican victories since 1952?**

<table border="1">
  <tr>
    <th align="center">state</th>
    <th align="center">winner</th>
    <th align="center">num_republican_victories</th>
  </tr>
  <tr valign="top">
    <td align="left">HI</td>
    <td align="left">republican</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">DC</td>
    <td align="left">republican</td>
    <td align="right">0</td>
  </tr>
</table>


7. We are interested in measuring the partisanship of the states. We will define a partisan state as one that is consistently won by a single party (either Democrat or Republican) since 1988. For example, since 1988 California has been won by the republicans once, and won by the democrats 7 times. Under this metric, California would be considered "partisan". (Note that if we include elections back to 1952, the republicans have won CA 9 times, and democrats have only won it 8 times).

**Find the states where all of the elections since 1988 (including 1988) have been won by the same party**

<table border="1">
  <tr>
    <th align="center">state</th>
    <th align="center">winner</th>
  </tr>
  <tr valign="top">
    <td align="left">DC</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">HI</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">MA</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">MN</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">NY</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">OR</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">RI</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">WA</td>
    <td align="left">democrat</td>
  </tr>
  <tr valign="top">
    <td align="left">AK</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">AL</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">ID</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">KS</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">MS</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">ND</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">NE</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">OK</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">SC</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">SD</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">TX</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">UT</td>
    <td align="left">republican</td>
  </tr>
  <tr valign="top">
    <td align="left">WY</td>
    <td align="left">republican</td>
  </tr>
</table>


