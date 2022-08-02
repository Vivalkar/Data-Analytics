select b#,first_name,last_name from students s,g_enrollments g 
where s.b#=g.g_b# and not exists
(select * from g_enrollments g where g_b# = s.b#  and g.score is not null and not exists
(select * from classes where classid = g.classid and exists
(select * from score_grade where score = g.score and lgrade='A')));