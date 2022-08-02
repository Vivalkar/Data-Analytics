select class.classid, class.dept_code, class.course# 
from classes class where exists
(select * from students s where s.last_name like 'B%' and s.gpa is not null and exists
(select * from g_enrollments g where g.g_B# = s.B# and g.classid=class.classid));