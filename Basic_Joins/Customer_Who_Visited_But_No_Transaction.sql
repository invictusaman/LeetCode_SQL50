/*
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.Return the result table in any order.

Link to problem - https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/

Write MySql query.
*/

select v.customer_id, count(*) as count_no_trans
from visits as v
left join transactions as t
on v.visit_id = t.visit_id
where t.transaction_id IS NULL
group by v.customer_id
