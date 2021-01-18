SELECT exams.student,SUM(CASE WHEN exams.grade >= '80' then 1 else 0 end) as A, SUM(CASE WHEN exams.grade >= '60' and exams.grade < '80' then 1 else 0 end) as B, 
SUM(CASE WHEN exams.grade >= '40' and exams.grade < '60' then 1 else 0 end) as C, SUM(CASE WHEN exams.grade < '40' then 1 else 0 end) as D from exams 
GROUP BY exams.student;
