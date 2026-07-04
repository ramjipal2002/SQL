/* Write your T-SQL query statement below */
WITH CTE AS
(SELECT D.Name AS Department,E.Name AS Employee,E.Salary,
DENSE_RANK() OVER(PARTITION BY D.Id ORDER BY E.Salary DESC) AS RNK
FROM Employee AS E
JOIN Department AS D ON E.DepartmentId = D.Id
)

SELECT Department, Employee, Salary
FROM CTE
WHERE RNK <= 3;