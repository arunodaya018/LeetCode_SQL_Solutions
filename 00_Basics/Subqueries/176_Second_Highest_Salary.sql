-- LeetCode 176: Second Highest Salary
-- Difficulty: Medium
-- Topic: Subquery
-- Database: MySQL

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
