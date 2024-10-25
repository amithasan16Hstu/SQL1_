create table booklist1(
number_id int,
book_name varchar(30),
book_title varchar(30),
page_number int
);
insert into booklist1(number_id,book_name,book_title,page_number)
values(101,"C++","C++",120),(102,"Concept of Database","DBMS",140),(103,"Modern Electronic Device","ECE",150),(104,"Digital Logic","DLD",150),(105,"Python Concept","Python",200),
(106,"Concept of Data Structure","DSA",220),(107,"Algorithm Design","DS",250);
insert into booklist1(number_id,book_name,book_title,page_number)
values(108,"C","C",99);


select count(number_id) as total from booklist1; 
Alter table booklist1
add total int;

alter table booklist1
drop column total;
select *from booklist1;

select count(*) from booklist1
where page_number=150;
select avg(page_number) from booklist1;

select number_id from booklist1
where  page_number> (select avg(page_number) from booklist1 where page_number>100);

