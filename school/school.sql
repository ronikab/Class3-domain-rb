-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

Create table teachers (
  id INTEGER PRIMARY key AUTOINCREMENT, 
  first_name TEXT, 
  last_name TEXT, 
  bio TEXT
);

create table courses (
  id INTEGER PRIMARY key AUTOINCREMENT, 
  name text, 
  description text
);

create table sections (
 id INTEGER PRIMARY key AUTOINCREMENT, 
 time text,
 course_id INTEGER
 teacher_id INTEGER 
);


create table enrollments (
enrollment_id INTEGER PRIMARY key AUTOINCREMENT,
student_id INTEGER,
teacher_id INTEGER,
course_id INTEGER,
section_id INTEGER
);
