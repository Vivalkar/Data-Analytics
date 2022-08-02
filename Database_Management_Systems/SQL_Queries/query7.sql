select classid, dept_code, course#, limit-class_size as seats_available 
from classes 
where course#>=500 and semester='Spring' and year=2021;