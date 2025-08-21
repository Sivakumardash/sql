create database collage;
use collage;
create table student(
rollno int primary key ,
name varchar(20),
mark int not null,
grade varchar(1),
city varchar(15) 
);

insert into student(rollno,name,mark,grade,city)
values

(1,"siva",80,"b","koraput"),
(6,"om",78,"b","koraput"),
(2,"vikash",80,"c","jamsedpur"),
(7,"aryan",60,"c","jamsedpur"),
(3,"sachin",90,"a","barampur"),
(4,"arpit",92,"b","bhadrag"),
(8,"deepak",52,"b","bhadrag"),
(10,"saswat",52,"b","bhadrag"),
(5,"rati",50,"d","bbsr"),
(9,"satya",90,"a","bbsr");



select * from student ;

-- avg mark of each city
select city , avg(mark)
from student 
group by city
order by city asc;

-- find the avg mark
select avg(mark)
from student;


-- give the second largest score from the student
select max(mark)
from student
where mark < ( select max(mark) from student );


select *  from student 
where mark>70 limit 2;


-- top 3 students
select *  from student   
order by mark desc
limit 3;

-- which grade how many students brought
select grade,count(rollno)
from student
group by grade ;


-- count no.of students in each city where max marks cross 70
select city , count(rollno)
from student
group by city 
having max(mark)>70;  -- it was applyed to every group 

-- or operator 
select * from student where grade="b" or city="koraput";

-- update a to o garde
update  student
set  grade="o"
where grade="a";

set sql_safe_updates=0;

-- using between 
update student
set grade="b"
where mark between 80 and 90;


create table dept(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on delete cascade
on update cascade
);

insert into dept 
values
(101,"english"),
(102,"it");

insert into teacher 
values
(101,"adam",101),
(102,"eve",103);

-- to update 
update dept
set id=102
where id=103;





select * from teacher;







drop table teacher;























