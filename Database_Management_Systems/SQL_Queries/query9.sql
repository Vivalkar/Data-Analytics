select maxsum.dept_code,maxsum.course#
from 
(select class.dept_code,class.course#,sum(class.class_size) as sum
from classes class
group by dept_code,course#
having sum(class.class_size) = (select max(sum(class_size))
                                from classes class
                                group by class.course#))maxsum, courses c
where maxsum.dept_code = c.dept_code and maxsum.course#=c.course#;
