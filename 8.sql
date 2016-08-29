SELECT
a.LastName || ', '||a.FirstName AS 'Customer Name',
b.Total,
a.Country,
c.LastName|| ', '|| c.FirstName AS 'Agent Name'

FROM
Customer AS a
JOIN Invoice AS b
ON a.CustomerId = b.CustomerId
JOIN Employee AS c
ON a.SupportRepId = c.EmployeeId