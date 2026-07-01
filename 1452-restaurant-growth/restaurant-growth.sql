/* Write your T-SQL query statement below */
SELECT
    visited_on,
    (
        SELECT SUM(amount)
        FROM Customer
        WHERE visited_on BETWEEN DATEADD(DAY, -6, c.visited_on)
                             AND c.visited_on
    ) AS amount,

    ROUND(
        (
            SELECT SUM(amount) / 7.0
            FROM Customer
            WHERE visited_on BETWEEN DATEADD(DAY, -6, c.visited_on)
                                 AND c.visited_on
        ),
        2
    ) AS average_amount

FROM Customer c

WHERE visited_on >=
(
    SELECT DATEADD(DAY, 6, MIN(visited_on))
    FROM Customer
)

GROUP BY visited_on
ORDER BY visited_on;