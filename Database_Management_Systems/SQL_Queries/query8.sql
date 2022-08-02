select s.b#, sum(credits)
from students s,g_enrollments g,classes class,courses c,course_credit cc
where g.g_b# = s.b#
and class.classid=g.classid
and c.course#=class.course# 
and cc.course#=c.course#
group by b#;