CREATE TABLE Student(
    id BIGINT,
    name VARCHAR(50),
    birthday DATE,
    "group" INT,
    PRIMARY KEY (id)
);

CREATE TABLE Subject(
    id BIGINT,
    name VARCHAR(50),
    description VARCHAR(1000),
    grade INT,
    PRIMARY KEY (id)
);

CREATE TABLE PaymentType(
    id BIGINT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE Payment(
    id BIGINT,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT,
    payment_date DATETIME,
    FOREIGN KEY (type_id) REFERENCES PaymentType (id),
    FOREIGN KEY (student_id) REFERENCES Student (id),
    PRIMARY KEY (id)
);

CREATE TABLE Mark(
    id BIGINT,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    FOREIGN KEY (student_id) REFERENCES Student (id),
    FOREIGN KEY (subject_id) REFERENCES Subject (id),
    PRIMARY KEY (id)
);
