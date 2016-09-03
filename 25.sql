SELECT COUNT(b.TrackId) AS 'Track Total', c.Name AS 'Most Purchased Track'

FROM Invoice AS a
JOIN InvoiceLine AS b
ON a.InvoiceId = b.InvoiceId
JOIN Track AS c
ON b.TrackId = c.TrackId

GROUP BY c.TrackId

LIMIT 5


