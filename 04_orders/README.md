# Randomly generated order table

The name of the database for this exercise is ` ex_orders_random`

This example is randomly generated, with the help of the Faker package to generate realistic names for people and products. Because it is randomly generated, do not expect to see:

* Normal trading patterns: I did not program a "spike" at Christmas or Black Friday
* Reasonable product names
* Reasonable prices. Someone buying 10 handcrafted goat cheese pizzas for $699.00 each could occur in this dataset.

Think of these silly prices as fun easter eggs.

The script for generating the data has not been included, to ensure that the CSVs are not accidentally overwritten.

This is a medium-sized data exercise, meaning that it isn't feasible to do the problems by hand, but not so large that it will stress-test your queries.

If you think you have found an error in one of the results, please post a Github Issue.

## Tables

There are 4 tables in this database:

- **customer:** all the details about the customer
- **customer_order**: for each order_id, lists the customer, the order date and delivery date. We assume that all items in the same order are delivered on the same day. This would be called `order` except that is a reserved word in PostgreSQL.
- **order_product**: Tells us which products, and how many, are in each order
- **product**: contains the product_id, name of the product, and price. We assume that the price does not change for a particular product.

## Questions

1. **List the 10 most expensive products for sale, and their prices**

<table border="1">
  <tr>
    <th align="center">product_id</th>
    <th align="center">product_name</th>
    <th align="center">price</th>
  </tr>
  <tr valign="top">
    <td align="right">8028</td>
    <td align="left">Incredible Granite Keyboard</td>
    <td align="right">115</td>
  </tr>
  <tr valign="top">
    <td align="right">8112</td>
    <td align="left">Ergonomic Concrete Cheese</td>
    <td align="right">114</td>
  </tr>
  <tr valign="top">
    <td align="right">8002</td>
    <td align="left">Ergonomic Granite Soap</td>
    <td align="right">113</td>
  </tr>
  <tr valign="top">
    <td align="right">8009</td>
    <td align="left">Generic Metal Hat</td>
    <td align="right">113</td>
  </tr>
  <tr valign="top">
    <td align="right">8091</td>
    <td align="left">Sleek Frozen Shirt</td>
    <td align="right">113</td>
  </tr>
  <tr valign="top">
    <td align="right">8134</td>
    <td align="left">Fantastic Steel Towels</td>
    <td align="right">113</td>
  </tr>
  <tr valign="top">
    <td align="right">8035</td>
    <td align="left">Generic Concrete Soap</td>
    <td align="right">113</td>
  </tr>
  <tr valign="top">
    <td align="right">8130</td>
    <td align="left">Small Metal Bike</td>
    <td align="right">112</td>
  </tr>
  <tr valign="top">
    <td align="right">8057</td>
    <td align="left">Awesome Metal Salad</td>
    <td align="right">111</td>
  </tr>
  <tr valign="top">
    <td align="right">8051</td>
    <td align="left">Handcrafted Frozen Pants</td>
    <td align="right">110</td>
  </tr>
</table>

2. **Which states have  more than 5 customers? Use the state column on the `customer` table. Count each customer on the table, regardless of whether they have ever bought anything.**

<table border="1">
  <tr>
    <th align="center">state</th>
    <th align="center">count</th>
  </tr>
  <tr valign="top">
    <td align="left">AL</td>
    <td align="right">9</td>
  </tr>
  <tr valign="top">
    <td align="left">WY</td>
    <td align="right">8</td>
  </tr>
  <tr valign="top">
    <td align="left">IL</td>
    <td align="right">7</td>
  </tr>
  <tr valign="top">
    <td align="left">WV</td>
    <td align="right">7</td>
  </tr>
  <tr valign="top">
    <td align="left">FL</td>
    <td align="right">6</td>
  </tr>
  <tr valign="top">
    <td align="left">ME</td>
    <td align="right">6</td>
  </tr>
  <tr valign="top">
    <td align="left">MS</td>
    <td align="right">6</td>
  </tr>
</table>

3. **Get the 17 customers that have made the largest number of orders. Include the name, address, state, and number of orders made.**

<table border="1">
  <tr>
    <th align="center">name</th>
    <th align="center">address</th>
    <th align="center">state</th>
    <th align="center">num_orders</th>
  </tr>
  <tr valign="top">
    <td align="left">Joseph Ponce</td>
    <td align="left">93874 Esparza Mountain</td>
    <td align="left">KS</td>
    <td align="right">19</td>
  </tr>
  <tr valign="top">
    <td align="left">Andrew Fischer</td>
    <td align="left">7764 Brown Divide</td>
    <td align="left">ME</td>
    <td align="right">18</td>
  </tr>
  <tr valign="top">
    <td align="left">Sabrina Foster</td>
    <td align="left">5075 Mullins Drive Apt. 298</td>
    <td align="left">MD</td>
    <td align="right">17</td>
  </tr>
  <tr valign="top">
    <td align="left">George Davis MD</td>
    <td align="left">439 Chan Route</td>
    <td align="left">IL</td>
    <td align="right">16</td>
  </tr>
  <tr valign="top">
    <td align="left">Benjamin Brown</td>
    <td align="left">598 Moore Ports</td>
    <td align="left">TN</td>
    <td align="right">16</td>
  </tr>
  <tr valign="top">
    <td align="left">Edgar Perry</td>
    <td align="left">333 Jenna Bridge</td>
    <td align="left">AL</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Eric Erickson</td>
    <td align="left">7751 Clark Lane</td>
    <td align="left">VA</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Emily Fritz</td>
    <td align="left">918 Renee Lights</td>
    <td align="left">AL</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Johnathan Charles</td>
    <td align="left">22678 Hartman Mission</td>
    <td align="left">HI</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Beth Rivera</td>
    <td align="left">7813 Ingram Junction Apt. 318</td>
    <td align="left">AK</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Kimberly Palmer</td>
    <td align="left">09293 Burnett Path Suite 681</td>
    <td align="left">NV</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Michelle Wright</td>
    <td align="left">565 Manuel Road Suite 343</td>
    <td align="left">IN</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Michelle Austin</td>
    <td align="left">856 Mills Lakes</td>
    <td align="left">MI</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Crystal Hayden</td>
    <td align="left">486 Traci Roads</td>
    <td align="left">WI</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Jessica Burke</td>
    <td align="left">68160 Amanda Pike</td>
    <td align="left">NM</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Sarah Ortiz</td>
    <td align="left">8972 Rodriguez Vista Suite 102</td>
    <td align="left">AL</td>
    <td align="right">15</td>
  </tr>
  <tr valign="top">
    <td align="left">Emily Nelson</td>
    <td align="left">56388 Rivera Neck Apt. 883</td>
    <td align="left">OK</td>
    <td align="right">15</td>
  </tr>
</table>

4. **Get all orders by customer 1026. Include the amount spent in each order, the order id, and the total number of distinct products purchased.**

Hint: you may want to create views.

<table border="1">
  <tr>
    <th align="center">order_id</th>
    <th align="center">spent</th>
    <th align="center">num_distinct_product</th>
  </tr>
  <tr valign="top">
    <td align="right">59</td>
    <td align="right">1086</td>
    <td align="right">5</td>
  </tr>
  <tr valign="top">
    <td align="right">274</td>
    <td align="right">912</td>
    <td align="right">4</td>
  </tr>
  <tr valign="top">
    <td align="right">387</td>
    <td align="right">190</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="right">622</td>
    <td align="right">1148</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">844</td>
    <td align="right">870</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="right">1795</td>
    <td align="right">317</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="right">1992</td>
    <td align="right">285</td>
    <td align="right">1</td>
  </tr>
</table>

5. **Get the 10 customers that have spent the most. Give the customer_id and amount spent**

<table border="1">
  <tr>
    <th align="center">customer_id</th>
    <th align="center">total_spent</th>
  </tr>
  <tr valign="top">
    <td align="right">1087</td>
    <td align="right">22632</td>
  </tr>
  <tr valign="top">
    <td align="right">1178</td>
    <td align="right">21972</td>
  </tr>
  <tr valign="top">
    <td align="right">1013</td>
    <td align="right">20568</td>
  </tr>
  <tr valign="top">
    <td align="right">1139</td>
    <td align="right">19881</td>
  </tr>
  <tr valign="top">
    <td align="right">1153</td>
    <td align="right">19791</td>
  </tr>
  <tr valign="top">
    <td align="right">1106</td>
    <td align="right">19182</td>
  </tr>
  <tr valign="top">
    <td align="right">1140</td>
    <td align="right">18979</td>
  </tr>
  <tr valign="top">
    <td align="right">1042</td>
    <td align="right">18091</td>
  </tr>
  <tr valign="top">
    <td align="right">1190</td>
    <td align="right">17990</td>
  </tr>
  <tr valign="top">
    <td align="right">1029</td>
    <td align="right">17958</td>
  </tr>
</table>

6. **Repeat the previous question, but include the customer's name, address, and state, in addition to the customer id and total amount spent**

<table border="1">
  <tr>
    <th align="center">customer_id</th>
    <th align="center">name</th>
    <th align="center">address</th>
    <th align="center">state</th>
    <th align="center">total_spent</th>
  </tr>
  <tr valign="top">
    <td align="right">1087</td>
    <td align="left">Allison Hoffman</td>
    <td align="left">55218 Lam Key</td>
    <td align="left">KY</td>
    <td align="right">22632</td>
  </tr>
  <tr valign="top">
    <td align="right">1178</td>
    <td align="left">Jacqueline Frazier</td>
    <td align="left">85471 Davis Viaduct Suite 294</td>
    <td align="left">AK</td>
    <td align="right">21972</td>
  </tr>
  <tr valign="top">
    <td align="right">1013</td>
    <td align="left">Timothy Robertson</td>
    <td align="left">72067 Bridget Loaf Apt. 580</td>
    <td align="left">PA</td>
    <td align="right">20568</td>
  </tr>
  <tr valign="top">
    <td align="right">1139</td>
    <td align="left">Joseph Ponce</td>
    <td align="left">93874 Esparza Mountain</td>
    <td align="left">KS</td>
    <td align="right">19881</td>
  </tr>
  <tr valign="top">
    <td align="right">1153</td>
    <td align="left">Johnathan Charles</td>
    <td align="left">22678 Hartman Mission</td>
    <td align="left">HI</td>
    <td align="right">19791</td>
  </tr>
  <tr valign="top">
    <td align="right">1106</td>
    <td align="left">Andrew Fischer</td>
    <td align="left">7764 Brown Divide</td>
    <td align="left">ME</td>
    <td align="right">19182</td>
  </tr>
  <tr valign="top">
    <td align="right">1140</td>
    <td align="left">Jennifer Blake</td>
    <td align="left">9201 Andrea Courts Apt. 332</td>
    <td align="left">MI</td>
    <td align="right">18979</td>
  </tr>
  <tr valign="top">
    <td align="right">1042</td>
    <td align="left">Jessica Burke</td>
    <td align="left">68160 Amanda Pike</td>
    <td align="left">NM</td>
    <td align="right">18091</td>
  </tr>
  <tr valign="top">
    <td align="right">1190</td>
    <td align="left">Michelle Austin</td>
    <td align="left">856 Mills Lakes</td>
    <td align="left">MI</td>
    <td align="right">17990</td>
  </tr>
  <tr valign="top">
    <td align="right">1029</td>
    <td align="left">Jordan Rose</td>
    <td align="left">0537 Joel Ferry</td>
    <td align="left">MT</td>
    <td align="right">17958</td>
  </tr>
</table>

7. **Find the 10 customers that spent the most in 2017. Give the name and amount spent. Take the date to be the order date (not the delivery date)**

<table border="1">
  <tr>
    <th align="center">customer_id</th>
    <th align="center">name</th>
    <th align="center">amt_spent</th>
  </tr>
  <tr valign="top">
    <td align="right">1120</td>
    <td align="left">Sabrina Foster</td>
    <td align="right">14986</td>
  </tr>
  <tr valign="top">
    <td align="right">1115</td>
    <td align="left">Emily Nelson</td>
    <td align="right">13480</td>
  </tr>
  <tr valign="top">
    <td align="right">1014</td>
    <td align="left">Timothy Marks</td>
    <td align="right">13266</td>
  </tr>
  <tr valign="top">
    <td align="right">1087</td>
    <td align="left">Allison Hoffman</td>
    <td align="right">11928</td>
  </tr>
  <tr valign="top">
    <td align="right">1181</td>
    <td align="left">Jeanne Casey</td>
    <td align="right">11789</td>
  </tr>
  <tr valign="top">
    <td align="right">1143</td>
    <td align="left">Dana Kline</td>
    <td align="right">11312</td>
  </tr>
  <tr valign="top">
    <td align="right">1103</td>
    <td align="left">Kristen Davies</td>
    <td align="right">11125</td>
  </tr>
  <tr valign="top">
    <td align="right">1106</td>
    <td align="left">Andrew Fischer</td>
    <td align="right">10659</td>
  </tr>
  <tr valign="top">
    <td align="right">1135</td>
    <td align="left">Emily Fritz</td>
    <td align="right">10628</td>
  </tr>
  <tr valign="top">
    <td align="right">1139</td>
    <td align="left">Joseph Ponce</td>
    <td align="right">10439</td>
  </tr>
</table>

8. **Which three products have we sold the most of? i.e. the greatest number of units?**

Without product names:
<table border="1">
  <tr>
    <th align="center">product_id</th>
    <th align="center">num_sold</th>
  </tr>
  <tr valign="top">
    <td align="right">8020</td>
    <td align="right">344</td>
  </tr>
  <tr valign="top">
    <td align="right">8070</td>
    <td align="right">315</td>
  </tr>
  <tr valign="top">
    <td align="right">8009</td>
    <td align="right">311</td>
  </tr>
</table>

With product names:
<table border="1">
  <tr>
    <th align="center">product_id</th>
    <th align="center">product_name</th>
    <th align="center">num_sold</th>
  </tr>
  <tr valign="top">
    <td align="right">8009</td>
    <td align="left">Generic Metal Hat</td>
    <td align="right">311</td>
  </tr>
  <tr valign="top">
    <td align="right">8020</td>
    <td align="left">Ergonomic Concrete Bike</td>
    <td align="right">344</td>
  </tr>
  <tr valign="top">
    <td align="right">8070</td>
    <td align="left">Handmade Metal Sausages</td>
    <td align="right">315</td>
  </tr>
</table>

9. **What is the average number of days between order and delivery?**

Answer: 
* 5 days, 21 hours, 48 mins and 14.4 seconds
* Can also be written as 5.9085 days

10. **What is the average number of days between order and delivery for each year? Take the year from the order date.**

<table border="1">
  <tr>
    <th align="center">order_year</th>
    <th align="center">avg_delivery_time</th>
  </tr>
  <tr valign="top">
    <td align="right">2016</td>
    <td align="left">5 days 19:12:00</td>
  </tr>
  <tr valign="top">
    <td align="right">2017</td>
    <td align="left">5 days 21:05:17.02544</td>
  </tr>
  <tr valign="top">
    <td align="right">2018</td>
    <td align="left">5 days 23:15:26.732673</td>
  </tr>
</table>

It seems that the average amount of time for an order is slowly increasing.
