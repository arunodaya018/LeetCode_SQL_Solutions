/*
LeetCode 607: Sales Person
Difficulty: Easy
Topics: JOIN, Subquery, NOT IN
Database: MySQL

Approach:
1. Join Orders with Company to identify orders placed with RED.
2. Retrieve the sales_id values of salespersons who sold to RED.
3. Exclude those salespersons from SalesPerson using NOT IN.
*/

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT o.sales_id
    FROM Orders o
    JOIN Company c
        ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
