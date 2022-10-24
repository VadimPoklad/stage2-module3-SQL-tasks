SELECT mark FROM mark WHERE mark > 6 ORDER BY mark DESC;

SELECT amount FROM payment WHERE amount < 300 ORDER BY amount;

SELECT name FROM paymenttype ORDER BY name;

SELECT name FROM student ORDER BY name DESC;

SELECT id, name, birthday, groupnumber FROM student WHERE id IN ( SELECT DISTINCT student_id FROM payment WHERE amount > 1000 ) ORDER BY birthday;

