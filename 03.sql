SELECT exams.student, MIN(exams.grade), MAX(exams.grade), COUNT(exams.student) from exams JOIN students ON students.uun = exams.student 
GROUP BY exams.student HAVING CAST (SUM(exams.grade) AS FLOAT) / COUNT(exams.grade) >= 75;
