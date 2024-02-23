-- 1. selektoji te gjith te dhenat ne tabelen classrooms
SELECT * FROM classrooms;

-- 2. numeroji te gjith te dhenat ne tabelen students
select count(*)
from students;

-- 3. selektoji dita kolona ne tabelen teachers
Select email, phone, address 
from teachers; 

-- 4. gjeje noten me te lart te studentit ne bashkimin e tabelave students dhe student_subject
SELECT students.first_name, students.last_name, student_subject.grade
FROM students
INNER JOIN student_subject ON students.id = student_subject.student_id
WHERE student_subject.grade = (SELECT MAX(grade) FROM student_subject);

-- 5. selektoji te gjith studentet e nje klase te caktuar ne bashkimin e tabelave students, student_classroom dhe classrooms
Select classrooms.name, students.first_name, students.last_name, students.email
from students
inner join student_classroom on students.id = student_classroom.student_id
inner join classrooms on student_classroom.classroom_id = classrooms.id
where classrooms.id = 2;

-- 6.  selektoji subject e nje klase te caktuar, ne bashkimin e tabelave classrooms, subject_classroom dhe subjects
select subjects.name, subjects.description, classrooms.name
from classrooms 
inner join subject_classroom on classrooms.id = subject_classroom.classroom_id
inner join subjects on subject_classroom.subject_id = subjects.id
where classrooms.id = 4;

-- 7. slektoji edhe gjeje note me te lart te nje studenti ne nje klas te caktuar
select students.first_name, students.last_name, student_subject.grade, classrooms.name
from students
inner join student_classroom on students.id = student_classroom.student_id
inner join classrooms on student_classroom.classroom_id = classrooms.id
inner join student_subject on students.id = student_subject.student_id
inner join subjects on student_subject.subject_id = subjects.id
where classrooms.id = 1 and student_subject.grade = (select max(grade) from student_subject);

-- 8. slektoji te gjith teacher ku viti i regjistirmit eshte me gjat se 2 vjet
SELECT *
FROM teachers 
where registered <= DATE_SUB(NOW(), INTERVAL 2 YEAR);

-- 9. numeroji sa student ka male dhe female
select count(gender) 
from students
group by gender;

-- 10. slektimi i lendes te clilen e jep nje teacher i caktuar
select *
from teachers 
inner join subjects on teachers.id = subjects.teacher_id
where teachers.id = 5;



