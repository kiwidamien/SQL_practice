# Seattle rain data

The data was pulled from [this Kaggle set](https://www.kaggle.com/rtatman/did-it-rain-in-seattle-19482017). Three rows containing "NA"s have been removed.

The name of the database is `ex_seattle_weather`.

If you think you have found an error in the result set, please open an issue in Github. 

## Date information

Different database engines have different techniques for manipulating dates. You typically won't be marked down for not knowing the date transformations in PostgreSQL vs Oracle vs MySQL vs ......

For the following exercises, it is probably useful to know the EXTRACT command:
```sql
SELECT EXTRACT('month' FROM date_weather) AS month FROM weather LIMIT 5;
```
will return 5 rows with just the month extracted from the `date_weather` column. 

## Questions

1. **Select all rows from December 1st, 2000 to December 15th, 2000 (inclusive)**

<table border="1">
  <tr>
    <th align="center">date_weather</th>
    <th align="center">inches_rain</th>
    <th align="center">temp_max</th>
    <th align="center">temp_min</th>
    <th align="center">did_rain</th>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-01 00:00:00</td>
    <td align="right">0.04</td>
    <td align="right">55</td>
    <td align="right">39</td>
    <td align="left">t</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-02 00:00:00</td>
    <td align="right">0.18</td>
    <td align="right">51</td>
    <td align="right">37</td>
    <td align="left">t</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-03 00:00:00</td>
    <td align="right">0</td>
    <td align="right">44</td>
    <td align="right">34</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-04 00:00:00</td>
    <td align="right">0</td>
    <td align="right">51</td>
    <td align="right">37</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-05 00:00:00</td>
    <td align="right">0</td>
    <td align="right">50</td>
    <td align="right">36</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-06 00:00:00</td>
    <td align="right">0</td>
    <td align="right">50</td>
    <td align="right">35</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-07 00:00:00</td>
    <td align="right">0</td>
    <td align="right">40</td>
    <td align="right">34</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-08 00:00:00</td>
    <td align="right">0.02</td>
    <td align="right">45</td>
    <td align="right">30</td>
    <td align="left">t</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-09 00:00:00</td>
    <td align="right">0.06</td>
    <td align="right">43</td>
    <td align="right">36</td>
    <td align="left">t</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-10 00:00:00</td>
    <td align="right">0</td>
    <td align="right">40</td>
    <td align="right">30</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-11 00:00:00</td>
    <td align="right">0</td>
    <td align="right">37</td>
    <td align="right">28</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-12 00:00:00</td>
    <td align="right">0</td>
    <td align="right">37</td>
    <td align="right">28</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-13 00:00:00</td>
    <td align="right">0</td>
    <td align="right">37</td>
    <td align="right">30</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-14 00:00:00</td>
    <td align="right">0.26</td>
    <td align="right">46</td>
    <td align="right">28</td>
    <td align="left">t</td>
  </tr>
  <tr valign="top">
    <td align="left">2000-12-15 00:00:00</td>
    <td align="right">0</td>
    <td align="right">42</td>
    <td align="right">35</td>
    <td align="left">f</td>
  </tr>
</table>

2. **Get the average maximum temperature for every year from the year 2000 onward. Order the results by year (ascending)**

<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">avg_high_temp</th>
  </tr>
  <tr valign="top">
    <td align="right">2000</td>
    <td align="right">58.6748633879781</td>
  </tr>
  <tr valign="top">
    <td align="right">2001</td>
    <td align="right">58.4739726027397</td>
  </tr>
  <tr valign="top">
    <td align="right">2002</td>
    <td align="right">58.8931506849315</td>
  </tr>
  <tr valign="top">
    <td align="right">2003</td>
    <td align="right">60.441095890411</td>
  </tr>
  <tr valign="top">
    <td align="right">2004</td>
    <td align="right">60.6229508196721</td>
  </tr>
  <tr valign="top">
    <td align="right">2005</td>
    <td align="right">60.1483516483516</td>
  </tr>
  <tr valign="top">
    <td align="right">2006</td>
    <td align="right">61.0383561643836</td>
  </tr>
  <tr valign="top">
    <td align="right">2007</td>
    <td align="right">59.2027397260274</td>
  </tr>
  <tr valign="top">
    <td align="right">2008</td>
    <td align="right">58.4945355191257</td>
  </tr>
  <tr valign="top">
    <td align="right">2009</td>
    <td align="right">59.9123287671233</td>
  </tr>
  <tr valign="top">
    <td align="right">2010</td>
    <td align="right">59.6630136986301</td>
  </tr>
  <tr valign="top">
    <td align="right">2011</td>
    <td align="right">58.1397260273973</td>
  </tr>
  <tr valign="top">
    <td align="right">2012</td>
    <td align="right">59.5027322404372</td>
  </tr>
  <tr valign="top">
    <td align="right">2013</td>
    <td align="right">60.9013698630137</td>
  </tr>
  <tr valign="top">
    <td align="right">2014</td>
    <td align="right">62.5945205479452</td>
  </tr>
  <tr valign="top">
    <td align="right">2015</td>
    <td align="right">63.3698630136986</td>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="right">62.5464480874317</td>
  </tr>
  <tr valign="top">
    <td align="right">2017</td>
    <td align="right">61.7270114942529</td>
  </tr>
</table>

3. **Get the standard deviation of the maximum temperature per year, from 2000 onward. Order by year (ascending)**

<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">std_dev_temp_max</th>
  </tr>
  <tr valign="top">
    <td align="right">2000</td>
    <td align="right">11.4863002070745</td>
  </tr>
  <tr valign="top">
    <td align="right">2001</td>
    <td align="right">11.1753017929755</td>
  </tr>
  <tr valign="top">
    <td align="right">2002</td>
    <td align="right">12.3061711576914</td>
  </tr>
  <tr valign="top">
    <td align="right">2003</td>
    <td align="right">12.8721506568245</td>
  </tr>
  <tr valign="top">
    <td align="right">2004</td>
    <td align="right">12.6111461042733</td>
  </tr>
  <tr valign="top">
    <td align="right">2005</td>
    <td align="right">11.8930019716656</td>
  </tr>
  <tr valign="top">
    <td align="right">2006</td>
    <td align="right">13.0482476417774</td>
  </tr>
  <tr valign="top">
    <td align="right">2007</td>
    <td align="right">12.9170001769831</td>
  </tr>
  <tr valign="top">
    <td align="right">2008</td>
    <td align="right">12.9971007379294</td>
  </tr>
  <tr valign="top">
    <td align="right">2009</td>
    <td align="right">14.2328742782786</td>
  </tr>
  <tr valign="top">
    <td align="right">2010</td>
    <td align="right">11.1596248662939</td>
  </tr>
  <tr valign="top">
    <td align="right">2011</td>
    <td align="right">12.4523127703783</td>
  </tr>
  <tr valign="top">
    <td align="right">2012</td>
    <td align="right">12.7435718168572</td>
  </tr>
  <tr valign="top">
    <td align="right">2013</td>
    <td align="right">13.6023237869136</td>
  </tr>
  <tr valign="top">
    <td align="right">2014</td>
    <td align="right">13.0840466823314</td>
  </tr>
  <tr valign="top">
    <td align="right">2015</td>
    <td align="right">13.1818502942108</td>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="right">12.651353317887</td>
  </tr>
  <tr valign="top">
    <td align="right">2017</td>
    <td align="right">14.19533004469</td>
  </tr>
</table>

4. **What are the 10 hottest days on record? Take hottest to mean 'highest maximum temperature'.**

<table border="1">
  <tr>
    <th align="center">date_weather</th>
    <th align="center">inches_rain</th>
    <th align="center">temp_max</th>
    <th align="center">temp_min</th>
    <th align="center">did_rain</th>
  </tr>
  <tr valign="top">
    <td align="left">2009-07-29 00:00:00</td>
    <td align="right">0</td>
    <td align="right">103</td>
    <td align="right">71</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1994-07-20 00:00:00</td>
    <td align="right">0</td>
    <td align="right">100</td>
    <td align="right">65</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1981-08-09 00:00:00</td>
    <td align="right">0</td>
    <td align="right">99</td>
    <td align="right">68</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1991-07-23 00:00:00</td>
    <td align="right">0</td>
    <td align="right">99</td>
    <td align="right">65</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1960-08-09 00:00:00</td>
    <td align="right">0</td>
    <td align="right">99</td>
    <td align="right">59</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1981-08-10 00:00:00</td>
    <td align="right">0</td>
    <td align="right">98</td>
    <td align="right">67</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1960-08-08 00:00:00</td>
    <td align="right">0</td>
    <td align="right">98</td>
    <td align="right">66</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1988-09-02 00:00:00</td>
    <td align="right">0</td>
    <td align="right">98</td>
    <td align="right">59</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1979-07-16 00:00:00</td>
    <td align="right">0</td>
    <td align="right">98</td>
    <td align="right">63</td>
    <td align="left">f</td>
  </tr>
  <tr valign="top">
    <td align="left">1967-08-16 00:00:00</td>
    <td align="right">0</td>
    <td align="right">98</td>
    <td align="right">59</td>
    <td align="left">f</td>
  </tr>
</table>

Note: This answer includes all fields. Technically the question only asked for the dates, so you could filter down the columns returned if you so desired.

5. **In 2016, what fraction of days did it rain?**

Answer: 0.46994535519125683060, or about 47% (172 days out of 366)

6. **What is the 75th percentile for the amount of rain that fell on a day where _there was some rain_ in 2016?**

Hint: This is a somewhat advanced question. There are a couple of ways of approaching it:
  - count the number of rows with some rain, order then, and take the one ranked in the 75th percentile. This works on all RDBMSes.
  - use a PostgreSQL specific command such as `percent_rank` or `percentile_cont`

Note these different results give _slightly_ different answers (it depends on whether you interpolate to find the 75th percentile or not). This would be a more advanced question.

Answer: approximately 0.33 inches

7. **What is the 75th percentile for the amount of rain that fell on any day in 2016?**

Answer: approximately 0.15 inches

8. **Get the 10 years with the hottest average maximum temperature in July. Order from hottest to coolest**

<table border="1">
  <tr>
    <th align="center">date_part</th>
    <th align="center">avg_july_high_temp</th>
  </tr>
  <tr valign="top">
    <td align="right">2015</td>
    <td align="right">82.5806451612903</td>
  </tr>
  <tr valign="top">
    <td align="right">1958</td>
    <td align="right">81.4193548387097</td>
  </tr>
  <tr valign="top">
    <td align="right">2009</td>
    <td align="right">80.9677419354839</td>
  </tr>
  <tr valign="top">
    <td align="right">1985</td>
    <td align="right">80.9354838709677</td>
  </tr>
  <tr valign="top">
    <td align="right">2014</td>
    <td align="right">80.4193548387097</td>
  </tr>
  <tr valign="top">
    <td align="right">1960</td>
    <td align="right">79.6451612903226</td>
  </tr>
  <tr valign="top">
    <td align="right">1965</td>
    <td align="right">79.4516129032258</td>
  </tr>
  <tr valign="top">
    <td align="right">1990</td>
    <td align="right">79.1935483870968</td>
  </tr>
  <tr valign="top">
    <td align="right">2003</td>
    <td align="right">78.9677419354839</td>
  </tr>
  <tr valign="top">
    <td align="right">1994</td>
    <td align="right">78.9677419354839</td>
  </tr>
</table>

9. **Get the 10 years with the coldest average minimum temperature in December. Order from coolest to hottest**

<table border="1">
  <tr>
    <th align="center">date_part</th>
    <th align="center">avg_dec_min_temp</th>
  </tr>
  <tr valign="top">
    <td align="right">1990</td>
    <td align="right">30.3870967741935</td>
  </tr>
  <tr valign="top">
    <td align="right">1948</td>
    <td align="right">30.8064516129032</td>
  </tr>
  <tr valign="top">
    <td align="right">1985</td>
    <td align="right">30.9354838709677</td>
  </tr>
  <tr valign="top">
    <td align="right">1951</td>
    <td align="right">31.2258064516129</td>
  </tr>
  <tr valign="top">
    <td align="right">1964</td>
    <td align="right">31.4838709677419</td>
  </tr>
  <tr valign="top">
    <td align="right">1983</td>
    <td align="right">31.5161290322581</td>
  </tr>
  <tr valign="top">
    <td align="right">1968</td>
    <td align="right">32.0322580645161</td>
  </tr>
  <tr valign="top">
    <td align="right">1984</td>
    <td align="right">32.0967741935484</td>
  </tr>
  <tr valign="top">
    <td align="right">2009</td>
    <td align="right">32.0967741935484</td>
  </tr>
  <tr valign="top">
    <td align="right">1978</td>
    <td align="right">32.1612903225806</td>
  </tr>
</table>

10. **Repeat the last question, but round the temperatures to 3 decimal places**

HINT: If using the `ROUND` function, you will need to cast your results from `REAL` to `NUMERIC` first. There is an issue in PostgreSQL where REAL is not a subclass of NUMERIC. 

Format for casting

```sql
SELECT temp_min::numeric FROM weather
``` 

<table border="1">
  <tr>
    <th align="center">year</th>
    <th align="center">avg_min_december_temp</th>
  </tr>
  <tr valign="top">
    <td align="right">1990</td>
    <td align="right">30.387</td>
  </tr>
  <tr valign="top">
    <td align="right">1948</td>
    <td align="right">30.806</td>
  </tr>
  <tr valign="top">
    <td align="right">1985</td>
    <td align="right">30.935</td>
  </tr>
  <tr valign="top">
    <td align="right">1951</td>
    <td align="right">31.226</td>
  </tr>
  <tr valign="top">
    <td align="right">1964</td>
    <td align="right">31.484</td>
  </tr>
  <tr valign="top">
    <td align="right">1983</td>
    <td align="right">31.516</td>
  </tr>
  <tr valign="top">
    <td align="right">1968</td>
    <td align="right">32.032</td>
  </tr>
  <tr valign="top">
    <td align="right">1984</td>
    <td align="right">32.097</td>
  </tr>
  <tr valign="top">
    <td align="right">2009</td>
    <td align="right">32.097</td>
  </tr>
  <tr valign="top">
    <td align="right">1978</td>
    <td align="right">32.161</td>
  </tr>
</table>

11. **Given the results of the previous queries, would it be fair to use this data to claim that 2015 had the "hottest July on record"? Why or why not?**

Answer: No SQL for this question, it is about interpretation of results.

12. **Give the average inches of rain that fell per day for each month, where the average is taken over 2000 - 2010 (inclusive).** 

<table border="1">
  <tr>
    <th align="center">month</th>
    <th align="center">avg_daily_inches_rain</th>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="right">0.191612903460248</td>
  </tr>
  <tr valign="top">
    <td align="right">2</td>
    <td align="right">0.094276527248299</td>
  </tr>
  <tr valign="top">
    <td align="right">3</td>
    <td align="right">0.113577712622206</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="right">0.0853636359626597</td>
  </tr>
  <tr valign="top">
    <td align="right">5</td>
    <td align="right">0.0680351905699524</td>
  </tr>
  <tr valign="top">
    <td align="right">6</td>
    <td align="right">0.050181818189043</td>
  </tr>
  <tr valign="top">
    <td align="right">7</td>
    <td align="right">0.0161290320395724</td>
  </tr>
  <tr valign="top">
    <td align="right">8</td>
    <td align="right">0.0343695011842024</td>
  </tr>
  <tr valign="top">
    <td align="right">9</td>
    <td align="right">0.056930091577415</td>
  </tr>
  <tr valign="top">
    <td align="right">10</td>
    <td align="right">0.115542522634317</td>
  </tr>
  <tr valign="top">
    <td align="right">11</td>
    <td align="right">0.216242424065642</td>
  </tr>
  <tr valign="top">
    <td align="right">12</td>
    <td align="right">0.180058650585039</td>
  </tr>
</table>

