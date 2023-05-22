/*
   Credit Card Fraud Exploration Queries
/*
/* Load Fraud dataset */

--View final databse tables

SELECT * FROM credit_card;
SELECT * FROM cardholder;
SELECT * FROM merchant;
SELECT * FROM merchant_category;
SELECT * FROM merch_transaction;

--Count the transactions that are less than $2.00 per cardholder
SELECT cardholder_id, COUNT(transaction_id) AS small_transactions
FROM merch_transaction AS merch
JOIN credit_card AS cc
ON card_id = card_id
WHERE amount < 2.00
GROUP BY cardholder_id
ORDER BY small_transactions ASC;

--Looking at individual transactions and amounts for cardholders
SELECT cardholder_id, transaction_id, date, amount
FROM merch_transaction AS merch
JOIN credit_card AS cc
ON ccard_id = merchcard_id
ORDER BY cardholder_id ASC;

-- Exploring the transactions made between 7am and 9am for the Top 100
SELECT * FROM (
SELECT transaction_id, cardholder_id, date_part('hour',date), amount, date
FROM merch_transaction AS merch
JOIN credit_card AS cc
ON ccard_id = merchcard_id
) AS a
WHERE date_part >= 7
AND date_part <= 9
ORDER BY amount DESC
LIMIT 100;

--Finda all Merchants with Owner names
SELECT name AS owner_name, name AS merchant_name
FROM merch_transaction AS trans
JOIN credit_card AS cc
ON ccard_id = transcard_id
JOIN cardholder as a
ON a.cardholder_id = c.cardholder_id
JOIN merchant as merch
ON t.merchant_id = m.merchant_id
ORDER BY owner_name
