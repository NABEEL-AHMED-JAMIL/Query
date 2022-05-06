create table Worker(WORKER_ID SERIAL PRIMARY KEY, FIRST_NAME VARCHAR(50) NOT NULL, LAST_NAME VARCHAR(50) NOT NULL,
  SALARY INT NOT NULL, JOINING_DATE TIMESTAMP, DEPARTMENT VARCHAR(50)
);
// rename the col
alter table Worker rename WORKDER_ID to WORKER_ID;
alter table Worker rename JOINING_DATA to JOINING_DATE;
// worker insert query
INSERT INTO Worker 
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '2020-14-02 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2011-14-06 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2020-14-02 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-2020 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2011-06-14 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2011-06-14 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2020-01-14 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2011-04-14 09:00:00', 'Admin');

// BOUNS table
CREATE TABLE Bonus(WORKER_REF_ID INT, BONUS_AMOUNT INT, BONUS_DATE Date,
   FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
   ON DELETE CASCADE
);
// Bonus insert query
INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE)
VALUES (001, 5000, '2020-02-16'),
(002, 3000, '2011-06-16'),
(003, 4000, '2020-02-16'),
(001, 4500, '2020-02-16'),
(002, 3500, '2011-06-16');

// title table
CREATE TABLE Title (WORKER_REF_ID INT, WORKER_TITLE VARCHAR(25), AFFECTED_FROM DATE,
FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);

// Title insert query
INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');


		
select current_time;
select current_date;
select current_timestamp;
