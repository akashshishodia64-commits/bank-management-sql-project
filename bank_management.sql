CREATE DATABASE bank_management;
USE bank_management;

-- Customers Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    city VARCHAR(50),
    account_type VARCHAR(20),
    created_at DATE
);

--  Accounts Table

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    balance DECIMAL(12,2) DEFAULT 0,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Transactions Table

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),  -- deposit / withdraw / transfer
    amount DECIMAL(12,2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Add Index
CREATE INDEX idx_customer_id ON accounts(customer_id);
CREATE INDEX idx_account_id ON transactions(account_id);

-- customers

INSERT INTO customers (customer_id, name, phone, city, account_type, created_at) VALUES
(1,'Amit Sharma','9876543210','Delhi','Savings','2024-01-10'),
(2,'Riya Verma','9123456780','Mumbai','Current','2024-02-15'),
(3,'Rahul Singh','9988776655','Noida','Savings','2024-03-20'),
(4,'Neha Gupta','8899001122','Pune','Savings','2024-01-25'),
(5,'Vikas Yadav','7788990011','Delhi','Current','2024-02-10'),
(6,'Priya Singh','6677889900','Jaipur','Savings','2024-03-05'),
(7,'Arjun Mehta','9001122334','Bangalore','Current','2024-01-18'),
(8,'Sneha Patel','8123456789','Ahmedabad','Savings','2024-02-28'),
(9,'Karan Malhotra','9234567890','Chandigarh','Savings','2024-03-12'),
(10,'Isha Jain','9345678901','Indore','Current','2024-01-08'),
(11,'Rohit Kumar','9456789012','Delhi','Savings','2024-02-20'),
(12,'Pooja Sharma','9567890123','Mumbai','Current','2024-03-25'),
(13,'Aman Verma','9678901234','Pune','Savings','2024-01-30'),
(14,'Simran Kaur','9789012345','Chennai','Current','2024-02-14'),
(15,'Nikhil Bansal','9890123456','Noida','Savings','2024-03-18'),
(16,'Divya Agarwal','9012345678','Jaipur','Current','2024-01-22'),
(17,'Sahil Khan','9123409876','Bhopal','Savings','2024-02-05'),
(18,'Meera Joshi','9234509876','Delhi','Current','2024-03-09'),
(19,'Harsh Gupta','9345609876','Mumbai','Savings','2024-01-15'),
(20,'Tanya Roy','9456709876','Kolkata','Current','2024-02-27');

-- accounts

INSERT INTO accounts (account_id, customer_id, balance, status) VALUES
(101,1,55000,'Active'),
(102,2,82000,'Active'),
(103,3,30000,'Active'),
(104,4,45000,'Active'),
(105,5,67000,'Active'),
(106,6,38000,'Active'),
(107,7,91000,'Active'),
(108,8,52000,'Active'),
(109,9,61000,'Active'),
(110,10,47000,'Active'),
(111,11,75000,'Active'),
(112,12,66000,'Active'),
(113,13,34000,'Active'),
(114,14,88000,'Active'),
(115,15,29000,'Active'),
(116,16,54000,'Active'),
(117,17,31000,'Active'),
(118,18,72000,'Active'),
(119,19,83000,'Active'),
(120,20,46000,'Active');

-- transactions

INSERT INTO transactions (transaction_id, account_id, transaction_type, amount, transaction_date) VALUES
(1,101,'Deposit',20000,'2024-04-01'),
(2,101,'Withdraw',5000,'2024-04-05'),
(3,102,'Deposit',15000,'2024-04-03'),
(4,103,'Withdraw',8000,'2024-04-06'),
(5,104,'Deposit',12000,'2024-04-07'),
(6,105,'Withdraw',7000,'2024-04-09'),
(7,106,'Deposit',9000,'2024-04-10'),
(8,107,'Withdraw',11000,'2024-04-11'),
(9,108,'Deposit',5000,'2024-04-12'),
(10,109,'Withdraw',6000,'2024-04-13'),
(11,110,'Deposit',14000,'2024-04-14'),
(12,111,'Withdraw',3000,'2024-04-15'),
(13,112,'Deposit',10000,'2024-04-16'),
(14,113,'Withdraw',2000,'2024-04-17'),
(15,114,'Deposit',17000,'2024-04-18'),
(16,115,'Withdraw',4000,'2024-04-19'),
(17,116,'Deposit',8000,'2024-04-20'),
(18,117,'Withdraw',9000,'2024-04-21'),
(19,118,'Deposit',13000,'2024-04-22'),
(20,119,'Withdraw',5000,'2024-04-23'),
(21,120,'Deposit',6000,'2024-04-24'),
(22,101,'Deposit',7000,'2024-04-25'),
(23,102,'Withdraw',3000,'2024-04-26'),
(24,103,'Deposit',9000,'2024-04-27'),
(25,104,'Withdraw',2000,'2024-04-28'),
(26,105,'Deposit',11000,'2024-04-29'),
(27,106,'Withdraw',4000,'2024-04-30'),
(28,107,'Deposit',5000,'2024-05-01'),
(29,108,'Withdraw',6000,'2024-05-02'),
(30,109,'Deposit',7000,'2024-05-03'),
(31,110,'Withdraw',8000,'2024-05-04'),
(32,111,'Deposit',9000,'2024-05-05'),
(33,112,'Withdraw',1000,'2024-05-06'),
(34,113,'Deposit',12000,'2024-05-07'),
(35,114,'Withdraw',3000,'2024-05-08'),
(36,115,'Deposit',4000,'2024-05-09'),
(37,116,'Withdraw',5000,'2024-05-10'),
(38,117,'Deposit',6000,'2024-05-11'),
(39,118,'Withdraw',7000,'2024-05-12'),
(40,119,'Deposit',8000,'2024-05-13'),
(41,120,'Withdraw',9000,'2024-05-14'),
(42,101,'Deposit',10000,'2024-05-15'),
(43,102,'Withdraw',2000,'2024-05-16'),
(44,103,'Deposit',3000,'2024-05-17'),
(45,104,'Withdraw',4000,'2024-05-18'),
(46,105,'Deposit',5000,'2024-05-19'),
(47,106,'Withdraw',6000,'2024-05-20'),
(48,107,'Deposit',7000,'2024-05-21'),
(49,108,'Withdraw',8000,'2024-05-22'),
(50,109,'Deposit',9000,'2024-05-23');


SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM transactions;

-- Total Balance per Customer

SELECT c.name, SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.name
ORDER BY total_balance DESC;

-- Top 5 Rich Customers

SELECT c.name, SUM(a.balance) AS wealth
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.name
ORDER BY wealth DESC
LIMIT 5;  

-- Total Deposits vs Withdrawals

SELECT transaction_type, SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;

-- Monthly Transaction Trend

SELECT MONTH(transaction_date) AS month,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY MONTH(transaction_date)
ORDER BY month;

-- Customer Full Statement

SELECT c.name, a.account_id, t.transaction_type, t.amount, t.transaction_date
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
ORDER BY t.transaction_date;

-- View

CREATE VIEW customer_summary AS
SELECT c.customer_id, c.name, SUM(a.balance) AS total_balance 
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.name;

-- Add Transaction Status Insight

SELECT 
    account_id,
    SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE 0 END) AS total_deposit,
    SUM(CASE WHEN transaction_type = 'Withdraw' THEN amount ELSE 0 END) AS total_withdraw
FROM transactions
GROUP BY account_id;

SELECT account_id, COUNT(*) AS txn_count
FROM transactions
GROUP BY account_id
ORDER BY txn_count DESC;

-- Customer Activity Level

SELECT c.name, COUNT(t.transaction_id) AS total_transactions
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.name
ORDER BY total_transactions DESC;