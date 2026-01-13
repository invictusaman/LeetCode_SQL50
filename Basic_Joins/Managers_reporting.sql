/*
Write a solution to find managers with at least five direct reports.

Return the result table in any order.

Link to complete problem - https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/

*/

with manager as(
select managerId, count(*) as man_count
from employee
group by managerId
having man_count >= 5
)

select e.name
from employee e
inner join manager m
on e.id = m.managerId

/*
Alternatively, 

select name
from employee 
where id in (select managerId from manager)
*/
