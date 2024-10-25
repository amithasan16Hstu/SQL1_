-- regexp '^[bsp]' -> either b,c,p
-- regexp '^[a-f]%' -> range

create table studentlist(
customerID int,
customerName varchar(30),
country varchar(20)
);
insert into studentlist(customerID,customerName,country)
values(101,"Amit","Bangladesh"),(102,"Imtyaz","Nepal"),(103,"Hima","Pakistan"),(104,"Rezwan","Bangladesh"),(105,"Abdul","Qatar"),(106,"Messi","Argentina"),
(107,"Ronaldo","Portugal"),(108,"Neymar","Brazil"),(109,"Mbappe","France"),(110,"Kane","England");
select * from studentlist;

select * from studentlist
where customerName Like 'A%';

select *from studentlist
where customerName Like '%m%';

select *from studentlist
where customerName Like '%t';

select *from studentlist
where country NOT IN('Bangladesh','Pakistan');

select *from studentlist
where country REGEXP '^[a-f]';

select *from studentlist
where customerName Like '_m%';

select *from studentlist
where customerName Like'a_%';

select *from studentlist
where country Like 'Argentina';

select *from studentlist 
where country IN(select country where country Like 'Bangladesh');

select *from studentlist
where customerName Like 'A%' && country Like 'B%';

select * from studentlist
where customerName regexp '^[AMR]';

select *from studentlist
where customerName Like 'a___%';
