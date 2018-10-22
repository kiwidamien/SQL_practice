# Employee database

The database for these exercises is `ex_employee1`.

In the employee table, the column `manager_id` contains the _employee id_ of the manager of that employee. If the value is NULL, this means that employee doesn't have a manager.

This is a _small_ dataset. It should be possible to answer these questions by hand, and compare the results to those produced by your SQL query.

If you think you have found an error in the posted results, please create a Github Issue.

## Questions

1. **List all the employees in order of descreasing salary**

<table border="1">
  <tr>
    <th align="center">empid</th>
    <th align="center">name</th>
    <th align="center">managerid</th>
    <th align="center">deptid</th>
    <th align="center">salary</th>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="left">Anthony Stark</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">100000</td>
  </tr>
  <tr valign="top">
    <td align="right">15</td>
    <td align="left">Joe McMillan</td>
    <td align="right">13</td>
    <td align="right">2</td>
    <td align="right">80000</td>
  </tr>
  <tr valign="top">
    <td align="right">8</td>
    <td align="left">Shuri</td>
    <td align="right">&nbsp; </td>
    <td align="right">5</td>
    <td align="right">80000</td>
  </tr>
  <tr valign="top">
    <td align="right">14</td>
    <td align="left">Cameron Howe</td>
    <td align="right">13</td>
    <td align="right">3</td>
    <td align="right">75000</td>
  </tr>
  <tr valign="top">
    <td align="right">13</td>
    <td align="left">Donna Clarke</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">75000</td>
  </tr>
  <tr valign="top">
    <td align="right">9</td>
    <td align="left">Diane Rawlinson</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">50000</td>
  </tr>
  <tr valign="top">
    <td align="right">11</td>
    <td align="left">Nancy Karrigan</td>
    <td align="right">9</td>
    <td align="right">4</td>
    <td align="right">42000</td>
  </tr>
  <tr valign="top">
    <td align="right">16</td>
    <td align="left">Saul Goodman</td>
    <td align="right">13</td>
    <td align="right">6</td>
    <td align="right">40000</td>
  </tr>
  <tr valign="top">
    <td align="right">12</td>
    <td align="left">Kristi Yamaguchi</td>
    <td align="right">9</td>
    <td align="right">4</td>
    <td align="right">40000</td>
  </tr>
  <tr valign="top">
    <td align="right">10</td>
    <td align="left">Tonya Harding</td>
    <td align="right">9</td>
    <td align="right">4</td>
    <td align="right">30000</td>
  </tr>
  <tr valign="top">
    <td align="right">6</td>
    <td align="left">Bruce Banner</td>
    <td align="right">4</td>
    <td align="right">5</td>
    <td align="right">8000</td>
  </tr>
  <tr valign="top">
    <td align="right">7</td>
    <td align="left">Jane Foster</td>
    <td align="right">4</td>
    <td align="right">5</td>
    <td align="right">7500</td>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="left">Micheal Scott</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">6000</td>
  </tr>
  <tr valign="top">
    <td align="right">2</td>
    <td align="left">Dwight Schrute</td>
    <td align="right">1</td>
    <td align="right">2</td>
    <td align="right">4000</td>
  </tr>
  <tr valign="top">
    <td align="right">5</td>
    <td align="left">Bill Nye</td>
    <td align="right">4</td>
    <td align="right">5</td>
    <td align="right">3800</td>
  </tr>
  <tr valign="top">
    <td align="right">3</td>
    <td align="left">Jim Halpert</td>
    <td align="right">1</td>
    <td align="right">2</td>
    <td align="right">3500</td>
  </tr>
</table>

2. **List all the department names, and the number of employees in that department. Order by number of employess in department (greatest to least)**

<table border="1">
  <tr>
    <th align="center">deptname</th>
    <th align="center">num_in_dept</th>
  </tr>
  <tr valign="top">
    <td align="left">Research</td>
    <td align="right">4</td>
  </tr>
  <tr valign="top">
    <td align="left">Admin</td>
    <td align="right">4</td>
  </tr>
  <tr valign="top">
    <td align="left">Training</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Sales</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">IT</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Legal</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">SecretOps</td>
    <td align="right">0</td>
  </tr>
</table>

3. **List all the employees that don't have a manager**

<table border="1">
  <tr>
    <th align="center">empid</th>
    <th align="center">name</th>
    <th align="center">managerid</th>
    <th align="center">deptid</th>
    <th align="center">salary</th>
  </tr>
  <tr valign="top">
    <td align="right">1</td>
    <td align="left">Micheal Scott</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">6000</td>
  </tr>
  <tr valign="top">
    <td align="right">4</td>
    <td align="left">Anthony Stark</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">100000</td>
  </tr>
  <tr valign="top">
    <td align="right">8</td>
    <td align="left">Shuri</td>
    <td align="right">&nbsp; </td>
    <td align="right">5</td>
    <td align="right">80000</td>
  </tr>
  <tr valign="top">
    <td align="right">9</td>
    <td align="left">Diane Rawlinson</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">50000</td>
  </tr>
  <tr valign="top">
    <td align="right">13</td>
    <td align="left">Donna Clarke</td>
    <td align="right">&nbsp; </td>
    <td align="right">1</td>
    <td align="right">75000</td>
  </tr>
</table>

(Can also just list the employee name)

4. **List all employees by name, and the name of their manager. If the employee doesn't have a manager, leave the column as NULL.**

<table border="1">
  <tr>
    <th align="center">employee</th>
    <th align="center">manager</th>
  </tr>
  <tr valign="top">
    <td align="left">Dwight Schrute</td>
    <td align="left">Micheal Scott</td>
  </tr>
  <tr valign="top">
    <td align="left">Jim Halpert</td>
    <td align="left">Micheal Scott</td>
  </tr>
  <tr valign="top">
    <td align="left">Bruce Banner</td>
    <td align="left">Anthony Stark</td>
  </tr>
  <tr valign="top">
    <td align="left">Bill Nye</td>
    <td align="left">Anthony Stark</td>
  </tr>
  <tr valign="top">
    <td align="left">Jane Foster</td>
    <td align="left">Anthony Stark</td>
  </tr>
  <tr valign="top">
    <td align="left">Nancy Karrigan</td>
    <td align="left">Diane Rawlinson</td>
  </tr>
  <tr valign="top">
    <td align="left">Tonya Harding</td>
    <td align="left">Diane Rawlinson</td>
  </tr>
  <tr valign="top">
    <td align="left">Kristi Yamaguchi</td>
    <td align="left">Diane Rawlinson</td>
  </tr>
  <tr valign="top">
    <td align="left">Cameron Howe</td>
    <td align="left">Donna Clarke</td>
  </tr>
  <tr valign="top">
    <td align="left">Saul Goodman</td>
    <td align="left">Donna Clarke</td>
  </tr>
  <tr valign="top">
    <td align="left">Joe McMillan</td>
    <td align="left">Donna Clarke</td>
  </tr>
  <tr valign="top">
    <td align="left">Diane Rawlinson</td>
    <td align="left">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td align="left">Anthony Stark</td>
    <td align="left">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td align="left">Shuri</td>
    <td align="left">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td align="left">Micheal Scott</td>
    <td align="left">&nbsp; </td>
  </tr>
  <tr valign="top">
    <td align="left">Donna Clarke</td>
    <td align="left">&nbsp; </td>
  </tr>
</table>

5. **For each manager, list the number of employees he or she is managing. For these purposes, a manager is anyone who is not managed by someone else, even if that person has no direct reports.**

<table border="1">
  <tr>
    <th align="center">name</th>
    <th align="center">num_managed</th>
  </tr>
  <tr valign="top">
    <td align="left">Donna Clarke</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Anthony Stark</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Diane Rawlinson</td>
    <td align="right">3</td>
  </tr>
  <tr valign="top">
    <td align="left">Micheal Scott</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Shuri</td>
    <td align="right">0</td>
  </tr>
</table> 

6. **Find the two highest paid people per department**

Note: This is a good use case for _window functions_, although you can also do it with a where clause.

<table border="1">
  <tr>
    <th align="center">name</th>
    <th align="center">deptid</th>
    <th align="center">salary</th>
    <th align="center">rank</th>
  </tr>
  <tr valign="top">
    <td align="left">Anthony Stark</td>
    <td align="right">1</td>
    <td align="right">100000</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Donna Clarke</td>
    <td align="right">1</td>
    <td align="right">75000</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Joe McMillan</td>
    <td align="right">2</td>
    <td align="right">80000</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Dwight Schrute</td>
    <td align="right">2</td>
    <td align="right">4000</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Cameron Howe</td>
    <td align="right">3</td>
    <td align="right">75000</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Nancy Karrigan</td>
    <td align="right">4</td>
    <td align="right">42000</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Kristi Yamaguchi</td>
    <td align="right">4</td>
    <td align="right">40000</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Shuri</td>
    <td align="right">5</td>
    <td align="right">80000</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Bruce Banner</td>
    <td align="right">5</td>
    <td align="right">8000</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Saul Goodman</td>
    <td align="right">6</td>
    <td align="right">40000</td>
    <td align="right">1</td>
  </tr>
</table>


