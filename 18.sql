--Provide a query that shows total sales made by each sales agent

SELECT b.LastName, SUM( c.Total)

FROM Customer AS a 
JOIN Employee AS b
ON a.SupportRepId = b.EmployeeId
JOIN Invoice AS c
ON a.CustomerId = c.CustomerId

GROUP BY b.LastName
