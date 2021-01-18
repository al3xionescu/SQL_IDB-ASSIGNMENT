SELECT DISTINCT degrees.code, SUM(courses.credits) from degrees JOIN programmes ON programmes.degree = degrees.code 
JOIN courses ON courses.code = programmes.course GROUP BY degrees.code 
UNION SELECT DISTINCT degrees.code, 0 from degrees WHERE degrees.code NOT IN (SELECT degree from programmes);
