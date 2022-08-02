select distinct(s.b#),s.first_name,s.last_name 
from students s, g_enrollments g where exists
(select * from classes class where dept_code='CS' and exists
(select * from g_enrollments g where g.g_b#=s.b# and g.classid=class.classid and not exists
(select * from classes class1 where dept_code='Math' and exists
(select * from g_enrollments g1 where g1.g_b#=s.b# and g1.classid=class1.classid))));