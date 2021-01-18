SELECT courses.code from degrees JOIN programmes ON programmes.degree = degrees.code JOIN courses ON courses.code = programmes.course 
WHERE degrees.type = 'PG' GROUP BY courses.code HAVING COUNT( courses.code) = 1;
