# Order data 2 (window functions)

A database for this exercise has been created already, called `ex_superstore_normalize`.

The data for this exercise has been taken from Tableau's [2015 Superstore dataset](https://www.superdatascience.com/tableau/), with each sheet converted into CSVs. Unlike other exercises, you don't need the database for this exercise. You can choose to either make a new database directly from the CSVs, or import data from the large table into the smaller (normalized) tables.

 
If you think you have found an error in the questions below, please open a Github Issue.

## Exercise

There is only one exercise here: take the data in the `orders` table, and normalize it. That is, create other tables so that you are not repeating information. For example, you probably want to have customer data in a `customer` table, where each customer has a customer id as a primary key. The order table should contain the customer id, and no other information about the customer.

There are several different approaches to this problem, so no solution is provided. Here are some things to think about:
1. Can your proposed solution deal with multiple addresses per customer?
2. Can you tell which address each customer's order went to?
3. When you have made all your tables, can you write a SELECT statement with JOINs that recreates the original table?

## Preview of the `orders` table:

```sql
SELECT * FROM orders LIMIT 4;
```

<table border="1">
  <tr>
    <th align="center">row_id</th>
    <th align="center">order_priority</th>
    <th align="center">discount</th>
    <th align="center">unit_price</th>
    <th align="center">shipping_cost</th>
    <th align="center">customer_id</th>
    <th align="center">customer_name</th>
    <th align="center">ship_mode</th>
    <th align="center">customer_segment</th>
    <th align="center">product_category</th>
    <th align="center">product_subcategory</th>
    <th align="center">product_container</th>
    <th align="center">product_name</th>
    <th align="center">product_base_margin</th>
    <th align="center">country</th>
    <th align="center">region</th>
    <th align="center">state</th>
    <th align="center">city</th>
    <th align="center">postal_code</th>
    <th align="center">order_date</th>
    <th align="center">ship_date</th>
    <th align="center">profit</th>
    <th align="center">quantity_ordered_new</th>
    <th align="center">sales</th>
    <th align="center">order_id</th>
  </tr>
  <tr valign="top">
    <td align="right">20847</td>
    <td align="left">High</td>
    <td align="right">0.01</td>
    <td align="right">2.84</td>
    <td align="right">0.93</td>
    <td align="right">3</td>
    <td align="left">Bonnie Potter</td>
    <td align="left">Express Air</td>
    <td align="left">Corporate</td>
    <td align="left">Office Supplies</td>
    <td align="left">Pens &amp; Art Supplies</td>
    <td align="left">Wrap Bag</td>
    <td align="left">SANFORD Liquid Accent™ Tank-Style Highlighters</td>
    <td align="right">0.54</td>
    <td align="left">United States</td>
    <td align="left">West</td>
    <td align="left">Washington</td>
    <td align="left">Anacortes</td>
    <td align="right">98221</td>
    <td align="left">2015-01-07 00:00:00</td>
    <td align="left">2015-01-08 00:00:00</td>
    <td align="right">4.56</td>
    <td align="right">4</td>
    <td align="right">13.01</td>
    <td align="right">88522</td>
  </tr>
  <tr valign="top">
    <td align="right">20228</td>
    <td align="left">Not Specified</td>
    <td align="right">0.02</td>
    <td align="right">500.98</td>
    <td align="right">26</td>
    <td align="right">5</td>
    <td align="left">Ronnie Proctor</td>
    <td align="left">Delivery Truck</td>
    <td align="left">Home Office</td>
    <td align="left">Furniture</td>
    <td align="left">Chairs &amp; Chairmats</td>
    <td align="left">Jumbo Drum</td>
    <td align="left">Global Troy™ Executive Leather Low-Back Tilter</td>
    <td align="right">0.6</td>
    <td align="left">United States</td>
    <td align="left">West</td>
    <td align="left">California</td>
    <td align="left">San Gabriel</td>
    <td align="right">91776</td>
    <td align="left">2015-06-13 00:00:00</td>
    <td align="left">2015-06-15 00:00:00</td>
    <td align="right">4390.37</td>
    <td align="right">12</td>
    <td align="right">6362.85</td>
    <td align="right">90193</td>
  </tr>
  <tr valign="top">
    <td align="right">21776</td>
    <td align="left">Critical</td>
    <td align="right">0.06</td>
    <td align="right">9.48</td>
    <td align="right">7.29</td>
    <td align="right">11</td>
    <td align="left">Marcus Dunlap</td>
    <td align="left">Regular Air</td>
    <td align="left">Home Office</td>
    <td align="left">Furniture</td>
    <td align="left">Office Furnishings</td>
    <td align="left">Small Pack</td>
    <td align="left">DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7</td>
    <td align="right">0.45</td>
    <td align="left">United States</td>
    <td align="left">East</td>
    <td align="left">New Jersey</td>
    <td align="left">Roselle</td>
    <td align="right">7203</td>
    <td align="left">2015-02-15 00:00:00</td>
    <td align="left">2015-02-17 00:00:00</td>
    <td align="right">-53.8096</td>
    <td align="right">22</td>
    <td align="right">211.15</td>
    <td align="right">90192</td>
  </tr>
  <tr valign="top">
    <td align="right">24844</td>
    <td align="left">Medium</td>
    <td align="right">0.09</td>
    <td align="right">78.69</td>
    <td align="right">19.99</td>
    <td align="right">14</td>
    <td align="left">Gwendolyn F Tyson</td>
    <td align="left">Regular Air</td>
    <td align="left">Small Business</td>
    <td align="left">Furniture</td>
    <td align="left">Office Furnishings</td>
    <td align="left">Small Box</td>
    <td align="left">Howard Miller 12-3/4 Diameter Accuwave DS ™ Wall Clock</td>
    <td align="right">0.43</td>
    <td align="left">United States</td>
    <td align="left">Central</td>
    <td align="left">Minnesota</td>
    <td align="left">Prior Lake</td>
    <td align="right">55372</td>
    <td align="left">2015-05-12 00:00:00</td>
    <td align="left">2015-05-14 00:00:00</td>
    <td align="right">803.471</td>
    <td align="right">16</td>
    <td align="right">1164.45</td>
    <td align="right">86838</td>
  </tr>
</table>
