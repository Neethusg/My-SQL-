-- CREATING DATABASE

create database SCHOOL;
use SCHOOL;

-- CREATING TABLES
create table STUDENT (
Roll_No int auto_increment primary key,
First_Name varchar(50) not null,
Last_Name varchar(50),
Mark int not null,
Grade char(2) not null default ('F')
);
desc STUDENT;

-- RENAME A TABLE
rename table STUDENT to CLASSTEN;

-- MODIFYING A TABLE
alter table CLASSTEN
add	Phone_Number varchar(20),
add constraint check_Phone_Number check(Phone_Number like '+91%');
desc CLASSTEN;

ALTER TABLE CLASSTEN
ADD COLUMN CONTACT VARCHAR(20);

ALTER TABLE CLASSTEN
DROP COLUMN GRADE;
desc CLASSTEN;

-- TRUNCATING TABLE
truncate table CLASSTEN;

select * from CLASSTEN;

-- REMOVE TABLE FROM DATABASE

DROP TABLE CLASSTEN;