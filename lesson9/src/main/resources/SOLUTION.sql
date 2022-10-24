SELECT name FROM student WHERE id IN ( SELECT student_id FROM mark GROUP BY student_id HAVING AVG(mark) > 8);

SELECT id, name FROM student WHERE id IN ( SELECT student_id FROM mark GROUP BY student_id HAVING MIN(mark) > 7);

SELECT id, name FROM student WHERE id IN ( SELECT student_id FROM payment WHERE payment_date BETWEEN '2019-01-01' AND '2019-12-31' GROUP BY student_id HAVING COUNT(amount) > 2 );
