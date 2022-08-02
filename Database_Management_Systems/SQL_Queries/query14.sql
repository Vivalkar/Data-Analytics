select b#,first_name,last_name
from (select * from students s where st_level='master' and gpa is not null order by gpa desc)
where rownum <= 3 and exists
(select * from classes class where exists
(select * from g_enrollments g where g.classid = class.classid and b#=g.g_b#));