select * from customers;

-- 'Under 18' -> 0
-- '18-24' -> 1
-- '25-34' -> 2
-- 'Other' -> 3

SELECT
    CASE
        WHEN cust.age <18 THEN '0'
        WHEN cust.age BETWEEN 18 AND 24 THEN '1'
        WHEN cust.age BETWEEN 25 AND 34 THEN '2'
        ELSE '3' 
    END AS age_range, cust.state, count(*) AS TOTAL
FROM (SELECT DISTINCT customer_id, state, EXTRACT(YEAR from AGE(date_of_birth))::INT AS age FROM customers) as cust
GROUP BY age_range, cust.state
ORDER BY age_range ASC;

SELECT DISTINCT customer_id, EXTRACT(YEAR from AGE(date_of_birth))::INT AS age
FROM customers
WHERE EXTRACT(YEAR from AGE(date_of_birth))::INT < 18;

SELECT DISTINCT customer_id, EXTRACT(YEAR from AGE(date_of_birth))::INT AS age
FROM customers
WHERE EXTRACT(YEAR from AGE(date_of_birth))::INT > 34;

