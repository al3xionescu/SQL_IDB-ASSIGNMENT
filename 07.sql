SELECT DISTINCT courses.code from degrees JOIN programmes ON programmes.degree = degrees.code JOIN courses ON courses.code = programmes.course 
WHERE degrees.type = 'PG' AND courses.code IN (SELECT courses.code from degrees JOIN programmes ON programmes.degree = degrees.code 
JOIN courses ON courses.code = programmes.course WHERE degrees.type = 'UG');
