create table books(
book_id serial primary key, Tittle varchar(100), Author varchar(100),Genre varchar(100),
publication_year int,price numeric(10,2),
Stock INT
);

create table customer(
customer_id serial primary key , Name varchar(100), Email varchar(100),phone int,
city varchar(100), country varchar(100)
);

create table ordere (
order_id serial primary key,customer_id int references customer(customer_id),
book_id int references books(book_id),order_date date,Quality int,Total_amount numeric(10,2)
);

select * from books;
select * from customer;
select * from ordere;



select Genre from books
where Genre='Fiction';

select Tittle,publication_year from books
where publication_year<=1950;

select * from customer
where country='canada';

--Show orders placed in November 2023

select *from ordere
where order_date BETWEEN '2023-11-01' AND '2023-11-30';


select Stock from books;


select * from books order by price DESC limit 1;

select * from ordere
where Quality>1;


select * from ordere
where Total_amount>20;


select * from books order by Stock;


select sum(Total_amount) from ordere;
