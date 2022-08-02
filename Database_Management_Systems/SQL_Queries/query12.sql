select s.b#,s.first_name,s.last_name 
from students s where exists
(select * from g_enrollments g where s.b# = g.g_b#  and classid in
(select classid from classes class where class.dept_code='CS' and class.class_size=13));