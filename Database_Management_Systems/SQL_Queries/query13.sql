 select distinct(s.b#),s.first_name,s.last_name
 from students s , g_enrollments g where s.b# = g.g_b# and  g.classid in 
 (select classid from classes class where course# in 
 (select course# from courses c where class.course# = c.course# and c.title like '%database%'));