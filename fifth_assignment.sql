create table `STUDENT` ( `stud_no` int NOT NULL, `stud_name` varchar(50) NOT NULL, `CLASS` varchar(50), PRIMARY KEY (`stud_no`) )
create table `CLASS` ( `CLASS` varchar(50), `description` varchar(50) )
create table `LAB` ( `mach_no` int NOT NULL, `LAB_no` varchar(50) NOT NULL, `description` varchar(50), PRIMARY KEY (`mach_no`) )
create table `ALLOTMENT` ( `stud_no` int NOT NULL, `mach_no` int  NOT NULL,`day_of_week` varchar(50) ,
foreign key (`stud_no`) REFERENCES `STUDENT`(`stud_no`), foreign key (`mach_no`) REFERENCES `LAB`(`mach_no`) )


insert into student values(21,'Bipul','9th');
insert into student values(92,'Sushant','10th');
insert into student values(22,'Biswajit','11th');
insert into student values(43,'Indresh','9th');
insert into student values(11,'Asmit','12th');
insert into student values(50,'Meghna','10th');
insert into student values(57,'Nitin','11th');
insert into student values(83,'Shubham','11th');
insert into student values(87,'Sumit','9th');
insert into student values(97,'Sushobhit','12th');

insert into class values('9th','c,rmt,maths,numerical');
insert into class values('10th','c++,mern,maths,dsa');
insert into class values('9th','c,rmt,maths,numerical');
insert into class values('10th','c++,mern,maths,dsa');
insert into class values('11th','c#,dbms,statics,numerical');
insert into class values('11th','c#,dbms,statics,numerical');
insert into class values('9th','c,rmt,maths,numerical');
insert into class values('12th','c++,html,css,python');
insert into class values('11th','c#,dbms,statics,numerical');
insert into class values('10th','c++,mern,maths,dsa');
insert into class values('9th','c,rmt,maths,numerical');


insert into lab values(01,01,'machine num is 1 and lab is 1');
insert into lab values(02,02,'machine num is 2 and lab is 2');
insert into lab values(03,04,'machine num is 3 and lab is 4');
insert into lab values(14,11,'machine num is 14 and lab is 11');
insert into lab values(16,11,'machine num is 16 and lab is 11');
insert into lab values(11,01,'machine num is 11 and lab is 1');
insert into lab values(10,05,'machine num is 10 and lab is 5');
insert into lab values(08,07,'machine num is 8 and lab is 7');
insert into lab values(04,07,'machine num is 4 and lab is 7');
insert into lab values(15,02,'machine num is 15 and lab is 2');


insert into allotment values(21,01,'sunday');
insert into allotment values(92,02,'Monday');
insert into allotment values(22,03,'Tuesday');
insert into allotment values(11,14,'Wednesday');
insert into allotment values(43,16,'Thursday');
insert into allotment values(50,11,'Friday');
insert into allotment values(57,10,'Saturday');
insert into allotment values(83,08,'Sunday');
insert into allotment values(87,04,'Monday');
insert into allotment values(97,15,'Tuesday');

select student.stud_name,lab.LAB_no,lab.mach_no from student,lab,allotment  where allotment.mach_no=lab.mach_no 
and allotment.stud_no=student.stud_no;

select lab.mach_no,lab.description,allotment.day_of_week from lab,allotment where allotment.mach_no=lab.mach_no

select count(mach_no)from allotment where stud_no in(select stud_no from student where class='10th');

select allotment.stud_no,allotment.mach_no,student.stud_name,student.class from allotment,student
 where allotment.stud_no=student.stud_no and allotment.stud_no=87;
 
 select count(allotment.mach_no) no_of_machines from allotment ,lab where allotment.mach_no=lab.mach_no and allotment.day_of_week="Monday"
 
 select count(stud_no) allocated ,class from student where stud_no in(select stud_no from allotment) group by class
 
 
 create view sushant_92 as (select student.stud_name,student.stud_no,allotment.day_of_week,lab.mach_no,lab.lab_no 
 from student ,Lab,allotment where allotment.mach_no=lab.mach_no and allotment.stud_no=student.stud_no);
select * from sushant_92;

create view vieew2 as (select allotment.mach_no, student.stud_name from allotment, lab , student  where
allotment.day_of_week="Thursday" and allotment.mach_no=lab.mach_no and student.stud_no=allotment.stud_no);
SELECT * FROM `vieew2`;
