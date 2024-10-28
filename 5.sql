CREATE DATABASE School_Managment_System;
USE School_Managment_System;

-- Skolas vadības sistēmas datubāze (School Management System)
-- Izveidot datubāzi, kas reprezentē skolēnus, skolotājus,
-- kursus un departamentus, parādot dažādas attiecības starp tiem.

-- 1. uzdevums
-- Izveidot skolas vadības datubāzi (ar SQL sintaksi)

-- 2. uzdevums
-- Katram skolēnam (vārds un e-pasts) ir viens profils ar papildinformāciju
-- (adrese un telefona numurs), un katram profilam pieder tikai viens skolēns.
-- Izveidot nepieciešamās datubāzes tabulas un saites, lai glabātu minētos datus.
-- Ievadīt piecu skolēnu un viņu profilu datus. Izmantot “LAST_INSERT_ID()” funkciju
-- Izveidot vaicājumu, lai atrastu visus skolēnus kopā ar viņu profiliem.


CREATE TABLE Teacher (
    Teacher_ID int ,
    Teacher_Last_Name varchar(255),
    Teacher_First_Name varchar(255)
);

CREATE TABLE Student (
    Student_ID int KEY NOT NULL AUTO_INCREMENT,
    Student_Adress varchar(48),
    Student_Number int,
    Student_Email varchar(48),
    Student_LastName varchar(48),
    Student_FirstName varchar(48)
);

CREATE TABLE Student_Profile (
	profile_id int key not null auto_increment,
    address varchar(48),
    phone int,
    student_id int,
    foreign key (student_id) references Student (student_id)
    
);


CREATE TABLE Courses (
    Course_ID int,
    Course_name varchar(255)
);

CREATE TABLE Department (
    Department_ID int,
    Department_Name varchar(255)
);



INSERT INTO Student (Student_ID, Student_Adress, Student_Number, Student_Email, Student_LastName, Student_FirstName)
value ( 'Juras iela', 22334455, 'xcv@gmail.com', 'Priede', 'Janis'),
( 'Saules iela', 11223344, 'fgh@gmail.com', 'Liene', 'Rudolfs'),
( 'Ganibu iela', 45673451, 'jkh@gmail.com', 'Koks', 'Peteris' ),
( 'Brivibas iela', 233748398, 'jgd@gmail.com', 'Zala', 'Linda' ),
( 'Edoles iela', 8845234, 'ndd@gmail.com', 'Berzs', 'Gvido' ),
( 'Puku iela', 30998272, 'qwe@gmail.com', 'Galds', 'Zinta');


select * from Student s join Student_Profile sp on s.Student_ID = sp.Student_ID;
select * from student;

