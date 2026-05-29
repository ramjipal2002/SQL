/* Write your T-SQL query statement below */
SELECT CLASS
FROM  COURSES 
GROUP BY CLASS 
HAVING COUNT (STUDENT) >= 5