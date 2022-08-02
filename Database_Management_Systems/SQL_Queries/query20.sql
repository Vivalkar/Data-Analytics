select class.dept_code,class.course#, avg(g.score) as score
from students s, g_enrollments g , classes class,courses c
where g.g_b# = s.b#
and class.classid=g.classid
and c.course# =class.course#
and g.score is not null
group by class.dept_code,class.course#;