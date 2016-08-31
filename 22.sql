
SELECT b.LastName AS 'Agent Name', COUNT(a.CustomerId) AS 'Total Customers'

FROM Customer AS a 
JOIN Employee AS b
ON a.SupportRepId = b.EmployeeId

GROUP BY b.LastName