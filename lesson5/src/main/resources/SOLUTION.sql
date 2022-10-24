SELECT amount FROM payment WHERE amount >= 500;

SELECT * FROM student WHERE dateadd(year, -20, '20001010') > birthday;

SELECT * FROM student WHERE groupnumber = 10 AND dateadd(year, -20, '20001010') < birthday;

SELECT name FROM student WHERE name LIKE 'Mike %' OR groupnumber IN (4, 5, 6);

SELECT * FROM payment WHERE payment_date > dateadd(month, -8, '20001010');

SELECT name FROM student WHERE name LIKE 'A%';

SELECT name FROM student WHERE (name LIKE 'Roxi %' AND groupnumber = 4) OR (name LIKE 'Tallie %' AND groupnumber = 9);









