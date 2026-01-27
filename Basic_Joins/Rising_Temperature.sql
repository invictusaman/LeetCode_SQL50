/*
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.

Link to problem - https://leetcode.com/problems/rising-temperature/description/

Write MySql query.
*/

select w1.id
from weather as w1, weather as w2
where w1.temperature > w2.temperature
and datediff(w1.recordDate,w2.recordDate) = 1

/*
with cte as (
    select id,
    temperature,
    lag(temperature) over (order by id) as previous_temperature
    from weather
) 
select id
from cte
where temperature > previous_temperature   
*/
