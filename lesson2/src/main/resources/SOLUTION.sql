INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '2000-10-10', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris','2000-10-10', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl', '2000-10-10', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver', '2000-10-10', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James', '2000-10-10', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas', '2000-10-10', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry', '2000-10-10', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob', '2000-10-10', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan', '2000-10-10', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Bob', '2000-10-10', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Tom', '2000-10-10', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('May', '2000-10-10', 5);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Mark', '2000-10-10', 5);

INSERT INTO subject (name, description, grade) VALUES ('Art', NULL, 1);
INSERT INTO subject (name, description, grade) VALUES('Music', NULL, 1);
INSERT INTO subject (name, description, grade) VALUES('Geography', NULL, 2);
INSERT INTO subject (name, description, grade) VALUES('History', NULL, 2);
INSERT INTO subject (name, description, grade) VALUES('PE', NULL, 3);
INSERT INTO subject (name, description, grade) VALUES('Math', NULL, 3);
INSERT INTO subject (name, description, grade) VALUES('Science', NULL, 4);
INSERT INTO subject (name, description, grade) VALUES('IT', NULL, 4);
INSERT INTO subject (name, description, grade) VALUES('Physic', NULL,5);
INSERT INTO subject (name, description, grade) VALUES('Biology', NULL,5);

INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'John'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'Oliver')) ;
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'Henry'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'James'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'Chris'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 123, '2000-10-10',(SELECT id FROM student WHERE name = 'Carl'));

INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8 );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5 );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9 );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4 );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9 );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Bob'), (SELECT id FROM subject WHERE name = 'Physic'), 2  );
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Mark'), (SELECT id FROM subject WHERE name = 'Music'), 5  );