/*
Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
Return the result table in any order.

Link to problem - https://leetcode.com/problems/product-sales-analysis-i/description/

Write MySql query.
*/

Select p.product_name, s.year, s.price
from Sales as s
Inner join Product as p
on s.product_id = p.product_id
