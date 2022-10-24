DELETE FROM student WHERE id < 1;
DELETE FROM student WHERE id IN (SELECT student_id FROM mark GROUP BY student_id HAVING MIN(mark) < 4);
DELETE FROM paymenttype WHERE name = 'TEST';
DELETE FROM mark WHERE mark < 7;