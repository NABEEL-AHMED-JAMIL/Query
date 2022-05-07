// create a tale 

select * from customers;

ALTER TABLE customers
ADD COLUMN date_of_birth DATE;

UPDATE customers SET date_of_birth = NOW() - '1 year'::INTERVAL * ROUND(RANDOM() * 100);

