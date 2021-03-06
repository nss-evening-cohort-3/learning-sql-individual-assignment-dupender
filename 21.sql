SELECT "Last Name", MAX("Total Sales")

FROM
(SELECT b.LastName AS 'Last Name', SUM( c.Total) AS 'Total Sales'
FROM Customer AS a 
JOIN Employee AS b
ON a.SupportRepId = b.EmployeeId
JOIN Invoice AS c
ON a.CustomerId = c.CustomerId

GROUP BY b.LastName)
