--Corelated query--
select s.b#,s.first_name,s.last_name
from students s
where s.b# not in(
select g.g_b#
from g_enrollments g, score_grade sg 
where g.score=sg.score and sg.lgrade = 'A')and s.b# in
(select g.g_b# from g_enrollments g
where g.g_b#=s.b#);

--Uncorelated query--
select s.B#,s.first_name,s.last_name
from students s where s.B# not in(
select g.G_B# from g_enrollments g, score_grade sg
where g.score=sg.score and sg.lgrade = 'A') and s.B# in
(select g1.G_B# from g_enrollments g1, students s2
where g1.G_B#=s2.B#);