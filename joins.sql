create database joins

use joins

create table Person(Person_id int primary key,P_name varchar(50),Age int);


insert into Person values(1,'Naila',11);
insert into Person values(2,'jaha',91);
insert into Person values(3,'sana',33);
insert into Person values(4,'tania',21);
insert into person values(5,'Fiaz',21);
insert into Person values(6,'Talha',21);


select *from Person;

select *from C_order;







create table C_order(Order_id int primary key,order_qty int,
Person_id int foreign key references Person (Person_id));

 insert into C_order values(1,3,1)
  insert into C_order values(2,7,5)
   insert into C_order values(3,4,4)
    insert into C_order values(4,3,2)
	 insert into C_order values(5,2,3)
	 select *from Person
	 inner join C_order
	 on Person.Person_id =C_order.Order_id;

	 select Person.Person_id, P_name, order_qty
	 from Person
	 join C_order
	 on Person.Person_id = C_order.Person_id;

	  select *from Person
	 left join C_order
	 on Person.Person_id =C_order.Order_id;


	 
	  select *from Person
	 Right join C_order
	 on Person.Person_id =C_order.Order_id;


	 
	 
	  select *from Person
	 full outer join C_order
	 on Person.Person_id =C_order.Order_id;
