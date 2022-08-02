select avg(sum(cc.credits)) from g_enrollments g, classes c, course_credit cc 
where g.classid=c.classid and cc.course#=c.course# and g.classid in
(select classid from classes cl where classid not in
(select classid from g_enrollments where classid = cl.classid and score is null)) group by g.g_b#;