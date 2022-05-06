select * from customers;

select * from customers where state = 'CA';

-- query show the customer come from the state
select city, count(*) from customers
where state = 'CA'
group by city
having count(*) > 10
order by city;

SELECT first_name, last_name
FROM customers
ORDER BY first_name;

select * from products;

select product_name, list_price
from products
order by list_price asc;

-- get the top more expensive product
select product_name, list_price
from products
order by list_price desc
offset 0 rows
fetch first 10 rows onlyf;
