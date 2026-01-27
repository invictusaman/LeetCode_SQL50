/*
There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Return the result table in any order.

Link to problem - https://leetcode.com/problems/average-time-of-process-per-machine/description/

Write MySql query.
*/

select
a1.machine_id,
round(avg(a2.timestamp - a1.timestamp),3) as processing_time
from activity as a1
inner join activity as a2
on a1.machine_id = a2.machine_id
and a2.process_id = a2.process_id
and a1.activity_type = 'start'
and a2.activity_type = 'end'
group by a1.machine_id


/*
select 
machine_id,
ROUND(
    SUM(CASE
            WHEN activity_type = 'start' THEN -timestamp
            ELSE timestamp
        END) / 
    COUNT(DISTINCT process_id)
    , 3) as processing_time
from activity
group by machine_id
*/
