USE [lms_db];
select * from lms_book_details;
select * from lms_book_issue;
select  * from lms_fine_details;
select * from lms_members;
select * from lms_suppliers_details;
select * from lms_book_details;

select l1.book_code, l1.book_title, l2.supplier_name
from lms_book_details as l1 join lms_suppliers_details as l2
on l1.supplier_id=l2.supplier_id;

--Display the supplier_id and number of books supplie dby each supplier
select supplier_id, count(book_code) as  numberofbooks from lms_book_details
where supplier_id is not null
group by supplier_id;

select distinct book_title, member_id from lms_book_details join lms_book_issue on
lms_book_details.book_code=lms_book_issue.book_code;

select * from lms_book_details;
select * from lms_members;


use Employee_DB;
select * from employee;
select * from department;

--Display employee name, email and department name
select first_name+','+last_name as Name, email, name from employee join department
on department_id = department.id;

--Display emp name, dept name and the state location
select e.first_name, d.name as dept ,l.state 
from employee as e join department as d on d.id=e.department_id join 
location as l on d.location_id = l.id;

--Diaplay dep id and no of emp in each dept
Select department_id, count(id) as countemp from employee group by department_id;

--Dispaly department name and number of emp in each dept
select d.name, count(e.id) as countofemp from employee as e join department as d
on e.department_id=d.id
group by d.name;



