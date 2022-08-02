select s.b#, s.first_name, s.last_name, s.gpa
from students s where s.b# in
(select g_b# from g_enrollments g, classes c
where c.classid=g.classid and c.dept_code='CS' and g_b# in
(select g_b# from g_enrollments g, classes c
where g.classid=c.classid and c.dept_code='Math'));