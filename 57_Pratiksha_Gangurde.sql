#Q1-
use hr;
create table students (
student_id int primary key,
student_name varchar (50) not null,
age int(10) ,
hobbies varchar (50) unique key 
);
desc students;
#Q2-
insert into students (student_id,student_name,age,hobbies) values
(101,'Vee',18,'Dancing'),
(102,'Jin',19,'Singing'),
(103,'Hobi',20,'Reading'),
(104,'RM',21,'Painting');
select *from students;

#Q3-
use hr;
desc employees;
select *from employees;
select *from departments;
#Q3-
select count(*) from employees where first_name like '%d';
#Q4-
select concat(first_name,' ',last_name )  from employees as name order by salary=3;
#5-
select e.*
from employees e
join (
    select department_id, avg(salary) as avg_salary
    from employees
    group by department_id
) dept_avg on e.department_id = dept_avg.department_id
where e.salary > dept_avg.avg_salary;

#6.
select d.department_name
from department  d
join employee_tbl e
on d.e_id =e.emp_id
group by d.department_name
having COUNT(e.emp_id) > 5;
 
 #8-
 delimiter //
 create procedure emp_sal ( IN e_id int,out employee_name varchar(20) ,out department_id decimal )
 begin
   
	declare emp_sal int;
	select salary into emp_sal from employees
    where employee_id=emp_id;

end;
// 
delimiter ;
call  emp_sal(114,@employee_name,@department_name);

	
     
     
     
     
     
     
     
     
     #mongodb
     db.restaurant.retrieve({borough :{$eq:"Mahathan"}});
      db.restaurant.retrive({$get: {sort({qty:1}}));
      db.restaurant.retrive
    
    
    
    
    
