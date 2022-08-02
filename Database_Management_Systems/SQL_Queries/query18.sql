select distinct(s.b#),s.first_name,s.last_name
from students s,g_enrollments g,classes class
where s.B#=G_B# and g.classid=class.classid and class.course# in
(select class.course#
from g_enrollments g,classes class,students s
where g.classid=class.classid and g_b#='B00000004');