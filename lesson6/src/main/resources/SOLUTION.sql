SELECT amount FROM payment WHERE type_id = ( SELECT id FROM paymenttype WHERE name = 'MONTHLY');

SELECT mark FROM mark WHERE subject_id = ( SELECT id FROM subject WHERE name = 'Art');

SELECT name FROM student WHERE id IN ( SELECT student_id FROM payment WHERE type_id =( SELECT id FROM paymenttype WHERE name = 'WEEKLY' ));

SELECT name FROM student WHERE id IN ( SELECT student_id FROM mark WHERE subject_id = ( SELECT id FROM subject WHERE name = 'Math'));