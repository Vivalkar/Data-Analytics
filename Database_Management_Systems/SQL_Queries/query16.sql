column lgrade format a13;
select c.dept_code,c.course#,c.title ,nvl(to_char(sg.lgrade),'Missing Grade') as lgrade
from courses c
left join classes class
on c.course# = class.course#
left join g_enrollments g
on g.classid=class.classid
left join score_grade sg
on g.score = sg.score
where g.g_b#='B00000003';