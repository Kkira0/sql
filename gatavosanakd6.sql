create database sss;
use sss;

create table aa(
aa_id int key not null auto_increment,
aa_name varchar(48)
);

insert into aa( aa_name)
value ('ddd'),
('ff'),
('cc'),
('qq');

select * from aa;

-- 3. uzdevums
-- Katrs skolotājs var pasniegt vairākus kursus, bet katrs kurss ir saistīts ar tikai vienu skolotāju.
-- Izveidot nepieciešamās datubāzes tabulas un saites, lai glabātu minētos datus.
-- Ievadīt trīs skolotājus un katram piešķirt vairākus kursus.
-- Izveidot vaicājumu, lai atrastu visus kursus, ko pasniedz noteikts skolotājs.

create database skola;
use skola;

create table teacher(
	teacher_id int key not null auto_increment,
    first_name varchar(48),
    last_name varchar(48)
);

create table Course(
	course_id int key not null auto_increment,
    course_name varchar(48),
    teacher_id int,
    foreign key(teacher_id) references teacher(teacher_id)
);

insert into teacher (first_name, last_name)
value ('Janis', 'Berzins' ),
('Anna', 'Lapa'),
('Peteris', 'Koks');

insert into Course (course_name, teacher_id)
value ('math', 1 ),
('history', 2),
('lv', 2 ),
('biology', 3);

select * from course;
select * from teacher;

select * from  teacher join  course on teacher.teacher_id = course.teacher_id;
