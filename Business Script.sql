select * from stocks;

// show the stock for product with quantity
select st.store_name, pd.product_name, br.brand_name, ct.category_name, sk.quantity
from products as pd
inner join brands as br on br.brand_id = pd.brand_id
inner join categories as ct on ct.category_id = pd.category_id
inner join stocks as sk on sk.product_id = pd.product_id
inner join stores as st on st.store_id = sk.store_id
where st.store_name = 'Santa Cruz Bikes' and br.brand_name = 'Surly'
order by br.brand_name asc;


// show all product by brands name
select pd.product_id, pd.product_name, pd.list_price, pd.model_year, br.brand_name
from products as pd
inner join brands as br
on br.brand_id = pd.brand_id
where br.brand_name = 'Surly'
order by br.brand_name asc;
// show all product by brands with categoies
select pd.product_id, pd.product_name, pd.list_price, pd.model_year, br.brand_name, ct.category_name
from products as pd
inner join brands as br on br.brand_id = pd.brand_id
inner join categories as ct on ct.category_id = pd.category_id
where br.brand_name = 'Surly' and ct.category_name = 'Mountain Bikes'
order by br.brand_name asc;


select cust.customer_id, cust.first_name || ' ' || cust.last_name as customer_full_name,
ord.order_id, ord.order_date, ord.required_date, ord.shipped_date, ord.order_status,
stf.first_name || ' ' || stf.last_name as staff_full_name, sto.store_name,
sum(or_item.quantity) as total_quantity_item, 
sum(or_item.list_price) as total_price_item, 
sum(or_item.discount) as total_discount
from customers as cust
inner join orders as ord on ord.customer_id = cust.customer_id
inner join staffs as stf on stf.staff_id = ord.staff_id
inner join stores as sto on sto.store_id = ord.store_id
inner join order_items as or_item on or_item.order_id = ord.order_id
group by cust.customer_id, ord.order_id, stf.first_name, stf.last_name, sto.store_name
order by cust.customer_id asc;

// get the staff detail by store
select * from customers;
select * from stores;
select * from staffs;

select * from orders where order_status = 1;

// dimention query

select order_date, Count(order_date) as total_count
from orders
group by order_date;

// 2d
select order_date, count(order_date) as total_count
from orders
group by order_date, order_status;

select tmp.col1 as order_date, tmp.col2 as order_status, count(*) from (select distinct order_id, order_date as col1, order_status as col2
from orders) as tmp
group by tmp.col1, tmp.col2;

select order_status, count(order_status) as total_count
from orders
where order_date between '20160101' and '20170101' 
group by order_status;

select order_status, count(*) as order_count
from orders
where order_date like '2018%'
group by order_status;

select
case order_status
  when 1 then 'Pending'
  when 2 then 'Processing'
  when 3 then 'Rejected'
  when 4 then 'Completed'
end,
count(*) as order_count
from orders
where order_date like '2018%'
group by order_status;

select distinct
CASE
   when quantity > -1 and quantity <=10 then 'under 18'
   when quantity > 10 and quantity <=20 then 'between 18 to 50'
   when quantity > 20 then 'above 50+'
END as quantity_range,
count(*) as quantity_count
from stocks
group by quantity_range
