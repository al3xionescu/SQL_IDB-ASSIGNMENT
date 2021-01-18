SELECT exams.student, exams.date from exams where exams.date = (SELECT MAX(date) from exams as e where e.student = exams.student) 
GROUP BY exams.student, exams.date HAVING COUNT(exams.date) > 1;
