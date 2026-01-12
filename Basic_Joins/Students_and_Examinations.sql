/*
Write a solution to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name.

Link to complete problem - https://leetcode.com/problems/students-and-examinations/description/

Write mySQL query to solve it.
*/

with student_subject as(
select s.student_id, s.student_name, sub.subject_name
from students s
cross join subjects sub
)

select s.student_id, s.student_name, s.subject_name, count(e.student_id) as attended_exams
from student_subject s
left join examinations e
on s.student_id = e.student_id 
and s.subject_name = e.subject_name
group by s.student_id, s.subject_name
order by s.student_id, s.subject_name



