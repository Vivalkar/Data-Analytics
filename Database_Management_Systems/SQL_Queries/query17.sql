select g.g_b#, g.classid, g.score, sg.lgrade 
from g_enrollments g, score_grade sg 
where g.score = sg.score and g.score is not null order by score desc;