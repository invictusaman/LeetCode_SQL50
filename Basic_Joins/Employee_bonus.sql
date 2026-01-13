/*
Write a solution to report the name and bonus amount of each employee who satisfies either of the following:

The employee has a bonus less than 1000.
The employee did not get any bonus.
Return the result table in any order.

Link to complete problem - https://leetcode.com/problems/employee-bonus
*/

select e.name, b.bonus
from employee as e
left join bonus as b
on e.empId = b.empId
where b.bonus < 1000 OR b.bonus IS NULL
