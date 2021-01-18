SELECT COUNT(students.uun) FROM students JOIN degrees ON students.degree = degrees.code WHERE degrees.type = 'PG';
