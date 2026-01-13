/*
Write a solution to find the confirmation rate of each user.
Return the result table in any order.

Link to problem - https://leetcode.com/problems/confirmation-rate/description/

Write MySql query.
*/

with user_total as(
select user_id, count(*) as user_count
from confirmations
group by user_id
), 

action_total as (
select user_id, action, count(action) as action_count
from confirmations
group by user_id,action
),

confirmation_table as(
select u.user_id, round((action_count * 1.00) /user_count, 2) as confirmation_rate
from user_total u
join action_total a
on u.user_id = a.user_id
where a.action = 'confirmed'
)

select s.user_id, COALESCE(c.confirmation_rate, 0.00) as confirmation_rate
from signups s
left join confirmation_table c
on s.user_id = c.user_id
