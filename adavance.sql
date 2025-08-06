select* from books;
select* from orders;
select* from customers;

1.select b.Gence , sum(o.quantity) as total
from orders o
join books b on b.book_id = o.book_id
group by b.Gence;


2.select avg(price) as avg_price
from books
where GENCE = 'Fantasy';

3.SELECT customer_id, COUNT(order_id) AS total
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) >= 2;



4.select book_id ,count(order_id) as total 
from orders 
group by book_id
order by total desc limit 4;

5. 
select * from books 
where gence = 'fantasy'
order by price desc;

6.
select b.author , sum(o.quantity) as total from orders o 
join books b on o.book_id = b.book_id
group by b.author;

7.
select DISTINCT c.city total_amount from orders o
join customers c on o.customer_id = c.customer_id
where o.total_amount>30;

8.
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spend
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spend DESC;


9. 
SELECT 
  b.book_id,
  b.tittel,
  b.stock,
  COALESCE(SUM(o.quantity), 0) AS order_quantity
FROM books b
LEFT JOIN orders o ON b.book_id = o.book_id
GROUP BY b.book_id, b.tittel, b.stock;
