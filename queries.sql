--Data Analysis Part 1: 

--View Data
SELECT * FROM credit_card;
SELECT * FROM card_holder;
SELECT * FROM transaction_table;

--View for all transactions counts grouped per cardholder id 
CREATE VIEW cardholder_transaction_counts AS
SELECT
    cardholder_id,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_transaction_amount,
    AVG(amount) AS average_transaction_amount
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
GROUP BY cardholder_id;


--Isolate transactions counts grouped per cardholder id with total amount spent 
--and average transaction amount
SELECT * FROM cardholder_transaction_counts;

--Isolate total transactions of each cardholder
SELECT cardholder_id, transaction_count
FROM cardholder_transaction_counts;


--View for all transactions counts grouped per cardholder id under $2.00 with average amount
CREATE VIEW cardholder_low_value_transactions AS
SELECT
    cardholder_id,
    COUNT(*) AS low_value_transaction_count,
    SUM(amount) AS total_low_value_transaction_amount,
    AVG(amount) AS average_low_value_transaction_amount
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE amount < 2.00
GROUP BY cardholder_id;

--Isolates total transactions counts less than $2.00 per cardholder with total amount spent and 
--average transaction amount
SELECT * FROM cardholder_low_value_transactions;

--Isolates total transactions counts less than $2.00 per cardholder
SELECT cardholder_id, COUNT(*) AS low_value_transaction_count
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE amount < 2.00
GROUP BY cardholder_id;


--View for Identifying the top 100 highest transactions made between 7:00 am and 9:00 am
CREATE VIEW high_transactions_7_to_9 AS
SELECT transaction_table.id, transaction_table.amount, transaction_table.date
FROM transaction_table
WHERE transaction_table.date BETWEEN '2018-01-01 07:00:00' AND '2018-06-30 09:00:00'
ORDER BY transaction_table.amount DESC;


--Identifying the highest transactions made between 7:00 am and 9:00 am
SELECT * from high_transactions_7_to_9;

--Identifying the top 100 highest transactions made between 7:00 am and 9:00 am
SELECT * from high_transactions_7_to_9
LIMIT 100;

--Identifying the average amount in all transactions made between 7:00 am and 9:00 am
SELECT AVG(amount)
FROM (
    SELECT amount
    FROM high_transactions_7_to_9
) AS t;

-- View to identify all merchants prone to transaction hacks
CREATE VIEW merchants_frequent_small_transactions AS
SELECT
    m.name AS merchant_name,
    COUNT(*) AS small_transaction_count
FROM transaction_table AS t
JOIN credit_card AS c ON t.card = c.card
JOIN merchant AS m ON t.id_merchant = m.id
GROUP BY m.name
ORDER BY small_transaction_count DESC;

--Identifying all merchant prone to transaction hacks
SELECT * from merchants_frequent_small_transactions;

--Identifying the merchant with the most small transactions
SELECT merchant_name, small_transaction_count
FROM merchants_frequent_small_transactions
ORDER BY small_transaction_count DESC
LIMIT 1;

--Identifying the total number of small transactions
SELECT SUM(small_transaction_count)
FROM (
    SELECT small_transaction_count
    FROM merchants_frequent_small_transactions
) AS t;


--Identifying top 5 merchants prone to small transaction hacks 
SELECT
    m.name AS merchant_name,
    COUNT(*) AS small_transaction_count
FROM transaction_table AS t
JOIN credit_card AS c ON t.card = c.card
JOIN merchant AS m ON t.id_merchant = m.id
GROUP BY m.name
ORDER BY small_transaction_count DESC
LIMIT 5;

--Identifying top 5 merchants prone to small transaction hacks under $2.00
SELECT
    m.name AS merchant_name,
    COUNT(*) AS small_transaction_count
FROM transaction_table AS t
JOIN credit_card AS c ON t.card = c.card
JOIN merchant AS m ON t.id_merchant = m.id
WHERE t.amount < 2.00
GROUP BY m.name
ORDER BY small_transaction_count DESC
LIMIT 5;

--Data Analysis Part 2: 

--View Data
SELECT * FROM credit_card;
SELECT * FROM card_holder;
SELECT * FROM transaction_table;

SELECT *
FROM credit_card
WHERE cardholder_id = 2 OR cardholder_id = 18;

SELECT *
FROM transaction_table
WHERE card = 675911140852;


-- Create a line plot for cardholder ID 2
SELECT date, SUM(amount) AS total_amount
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE credit_card.cardholder_id = 2
GROUP BY date
ORDER BY date;

-- Create a line plot for cardholder ID 18
SELECT date, SUM(amount) AS total_amount
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE credit_card.cardholder_id = 18
GROUP BY date
ORDER BY date;

-- Create a line plot that contains both card holders' trend data (all amounts, 0 included)
SELECT date,
    SUM(CASE WHEN credit_card.cardholder_id = 2 THEN amount ELSE 0 END) AS total_amount_cardholder_2,
    SUM(CASE WHEN credit_card.cardholder_id = 18 THEN amount ELSE 0 END) AS total_amount_cardholder_18
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
GROUP BY date
ORDER BY date;


-- Create a line plot that contains both card holders' trend data (amounts greater than 0 only)
SELECT date,
  SUM(CASE WHEN credit_card.cardholder_id = 2 THEN amount ELSE 0 END) AS total_amount_cardholder_2,
  SUM(CASE WHEN credit_card.cardholder_id = 18 THEN amount ELSE 0 END) AS total_amount_cardholder_18
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
GROUP BY date
HAVING (SUM(CASE WHEN credit_card.cardholder_id = 2 THEN amount ELSE 0 END) > 0) OR (SUM(CASE WHEN credit_card.cardholder_id = 18 THEN amount ELSE 0 END) > 0)
ORDER BY date;


-- Data of daily transactions all of cardholder_25 in the database
SELECT date,
    SUM(CASE WHEN credit_card.cardholder_id = 25 THEN CASE WHEN amount = 0 THEN 0 ELSE amount END ELSE 0 END) AS total_amount_cardholder_25
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE credit_card.cardholder_id = 25
GROUP BY date
ORDER BY date;

-- Data of daily transactions from jan to jun 2018 of cardholder_25 in the database only
SELECT date, SUM(amount) AS total_amount
FROM transaction_table
JOIN credit_card ON transaction_table.card = credit_card.card
WHERE date BETWEEN '2018-01-01' AND '2018-06-30'
AND credit_card.cardholder_id = 25
GROUP BY date
ORDER BY date;

-- Challenge 
SELECT card_holder.id AS "id", transaction_table.date AS "date",  transaction_table.amount AS "amount"
FROM transaction_table
JOIN credit_card on credit_card.card = transaction_table.card
JOIN card_holder on card_holder.id = credit_card.cardholder_id;