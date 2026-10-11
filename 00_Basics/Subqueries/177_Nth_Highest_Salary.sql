-- LeetCode 177: Nth Highest Salary
-- Difficulty: Medium
-- Topic: Subqueries, LIMIT and OFFSET
-- Database: MySQL

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;

    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET N
    );
END
