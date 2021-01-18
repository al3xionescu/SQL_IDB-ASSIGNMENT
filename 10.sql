SELECT s.uun, s.name from students AS S JOIN programmes ON s.degree = programmes.degree GROUP BY s.uun, s.name HAVING COUNT(programmes.course) = 
(SELECT COUNT(exams.student) from exams where exams.student = s.uun AND exams.course IN 
(SELECT programmes.course from programmes where programmes.degree = s.degree) GROUP BY exams.student )
UNION SELECT DISTINCT students.uun, students.name from students where students.degree NOT IN (SELECT degree from programmes);
