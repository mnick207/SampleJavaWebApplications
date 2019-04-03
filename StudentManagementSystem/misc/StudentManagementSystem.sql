CREATE TABLE students
( student_id number(10) NOT NULL,
  first_name varchar2(50) NOT NULL,
  last_name varchar2(50),
  email_id varchar2(60),
  contact_num varchar2(15) NOT NULL,
  city varchar2(25),
  state varchar2(25),
  country varchar2(25) NOT NULL,
  zip_code number(10),
  date_of_birth date NOT NULL,
  course varchar2(20) NOT NULL, 
  CONSTRAINT students_pk PRIMARY KEY (student_id)
);

CREATE SEQUENCE students_student_id_seq
  MINVALUE 1000
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;

INSERT INTO students VALUES(students_student_id_seq.nextval, 'test first name', 'test last name', 'testeamil@yahoo.com', '+91-9999988888', 'test city', 'test state', 'test country', 123456, sysdate, 'BTECH');

INSERT INTO students(student_id, contact_num, course, date_of_birth, country, first_name) VALUES(students_student_id_seq.nextval, '+91-9999988888', 'BTECH', sysdate, 'test country','test first name');
