/*
Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
Return the result table in any order.
Link to problem statement - https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
*/

select e_uni.unique_id, e.name 
from employees as e
left join employeeuni as e_uni
on e.id = e_uni.id
