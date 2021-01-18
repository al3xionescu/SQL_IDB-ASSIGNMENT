SELECT students.uun FROM students WHERE students.uun NOT IN (SELECT exams.student FROM exams);
