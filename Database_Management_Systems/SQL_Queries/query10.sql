select s.b#,s.first_name,s.last_name, count(g.classid) as class_count
from students s 
left join g_enrollments g
on g_b# = s.b#
where (select count(*) from g_enrollments where g_b# = s.b#) >= 2
group by b# ,first_name,last_name;