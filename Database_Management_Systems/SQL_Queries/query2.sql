select dept_code,course#,title from courses c where course# in 
(select course# from classes class where semester = 'Spring' and year=2021 and class.classid in
(select classid from g_enrollments g where g.g_b#='B00000003'));