column bdate heading 'birth date' format a10;
select distinct s.b#, s.first_name, s.bdate  from students s, g_enrollments g, classes c where
c.dept_code = 'CS' and g.classid= c.classid and s.b# = g.g_b#;