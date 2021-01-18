SELECT exams.student from exams GROUP BY exams.student HAVING CAST(COUNT(exams.student) * 3 as float) / 10 < (SELECT COUNT(student) from exams E 
where E.student = exams.student and E.grade < 40 GROUP BY E.student);
