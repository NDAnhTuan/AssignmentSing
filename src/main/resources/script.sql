CREATE  SCHEMA IF NOT EXISTS SingalarityAss;
use SingalarityAss;
create table IF NOT EXISTS student (
	id_student INT PRIMARY KEY,
    student_name varchar(255) not null,
	school_start int,
    school_end int
);
INSERT INTO student (id_student,student_name,school_start,school_end)
values (2115177,"Nguyen Duc Anh Tuan",2021,2025), 
		(2115178,"Truong Hoang Nhat",2021,2025);
