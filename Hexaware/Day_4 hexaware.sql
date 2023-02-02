use lms_db;
select * from lms_book_details;
select * from lms_book_issue;
select * from lms_fine_details;
select * from lms_members;
select * from lms_suppliers_details;
--1. Write a query to display the book title, supplier name who
--has supplied books to library
select book_title, supplier_name from lms_book_details join lms_suppliers_details
on lms_book_details.supplier_Id=lms_suppliers_details.supplier_id;

--2.Write a query to display member name and book code for
--the book he/she taken from the library.
select member_name,book_code from lms_members join lms_book_issue
on lms_members.member_id=lms_book_issue.member_id;

--3.Write a query to display the book title and date when the
--book was taken from the library. 
select book_title,Date_issue from lms_book_details join lms_book_issue
on lms_book_details.book_code=lms_book_issue.book_code;

--4.Write a query to display the member id and the fine
--amount paid by the member in the library.
select member_id,fine_amount from lms_fine_details join lms_book_issue
on lms_book_issue.fine_range =lms_fine_details.fine_range;

--5.Write a query to display the member name and the date
--difference between the date return and date returned. 
select member_name ,datediff(Day, date_return, date_returned) from LMS_MEMBERS join LMS_BOOK_ISSUE
on LMS_MEMBERS.MEMBER_ID=LMS_BOOK_ISSUE.MEMBER_ID;

--6.Write a query to display the book title and the member
--name of member who has taken book from library. 
select book_title,member_name from lms_book_details as l1 join 
lms_book_issue as l2 on l1.book_code=l2.book_code join lms_members as l3
on l2.member_id=l3.member_id;

--7. Write a query to display the book title, member name and
--the supplier name for the books taken from the library. 
select book_title, supplier_name, member_name from lms_book_details as l1 join 
lms_suppliers_details as l2 on l1.supplier_id=l2.supplier_id join lms_members as l3 join lms_book_issue as l4
on l3.member_id = l4.member_id;
