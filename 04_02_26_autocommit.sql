create table user_info(id int primary key,name varchar(20),channel_id int,foreign key(channel_id) references channels(channel_id));
desc user_info;
set autocommit=0;
 insert into user_info values(10,'virat',1);
 
 create table channels(channel_id int,user_id int,channel_name varchar(50),description text,subscribers BIGINT,created_at DATETIME);
 drop table channels;
 desc channels;
 select * from channels;
 insert into channels values(1,2,'comedy','hi hello',6786,'28-08-09 02:00:00');
 set autocommit=0;
 insert into channels values(2,3,'horror','movies',56789,'11-08-09 08:00:00');
 rollback;
 insert into channels values(4,5,'friction','series',56786,'23-08-09 07:00:00');
 
create table channed(channel_id int,user_id int,channel_name varchar(50),description text,subscribers BIGINT,created_at DATETIME);
desc channed;
select * from channed;
insert into channed values(1,2,'comedy','hi hello',6786,'28-08-09 02:00:00');
insert into channed values(2,3,'horror','movies',56789,'11-08-09 08:00:00');
set autocommit=0;
insert into channed values(4,5,'friction','series',56786,'23-08-09 07:00:00');
rollback;

create table students1(student_id int,student_name varchar(20),student_marks int,college_name varchar(20));
desc students1;
insert into students1 values(12,'sindhu',50,'reva university');
insert into students1 values(13,'KAVYA',60,'CMR university');
insert into students1 values(14,'swaroop',80,'jain university');
set autocommit=0;
insert into students1 values(15,'ramya',100,'GMIT university');
insert into students1 values(16,'rashmi',90,'BIET university');
select * from students1;
rollback;
delete from students where student_id = 13; 
update students1 set student_name = 'laya' where student_id = 13;
 
 
create table teachers (teacher_id int primary key,teacher_name varchar(50),subject varchar(40),experience_years int,phone_number bigint);
insert into teachers values(23,'shantha','kannada',35,6789065443);
insert into teachers values(12,'gayathri','English',8,9789065443);
insert into teachers values(89,'vasanth','maths',9,8789065443);
insert into teachers values(11,'manoj','science',14,9989065443);
select * from teachers;
set autocommit=0;
insert into teachers values(78,'Ranjitha','social science',3,789065443);
insert into teachers values(67,'sonu','Hindi',6,8989065443);
rollback;
update teachers set teacher_name = 'megha' where teacher_name = 'gayathri';
delete from teachers where teacher_name = 'megha';

create table courses(course_id int primary key,course_name varchar(50),course_duration int,course_fee decimal(8,2));
insert into courses values(1,'java',8,8500.98);
insert into courses values(2,'sql',2,25000.6);
insert into courses values(3,'testing',1,1500.8);
select * from courses;
update courses set course_id = 6 where course_id = 1;
delete from courses where course_id = 6;
desc courses;
set autocommit=0;
insert into courses values(4,'html',4,2500.8);
rollback;

create table departments (department_id int primary key,department_name varchar(50),department_head varchar(50));
insert into departments values(1,'CSA','Raj');
insert into departments values(2,'Machanical','Naveen');
set autocommit=0;
select * from departments; 
insert into departments values(3,'Biology','kumar');
update departments set department_name = 'civil' where department_name = 'Biology';
delete from departments where department_id =1;
rollback;



