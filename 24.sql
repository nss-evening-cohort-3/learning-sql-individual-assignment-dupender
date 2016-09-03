SELECT "Most Purchased Track", MAX("Track Total")

FROM
(SELECT COUNT(b.TrackId) AS 'Track Total', c.Name AS 'Most Purchased Track'

FROM Invoice AS a
JOIN InvoiceLine AS b
ON a.InvoiceId = b.InvoiceId
JOIN Track AS c
ON b.TrackId = c.TrackId

WHERE a.InvoiceDate LIKE '2013%'

GROUP BY c.TrackId)
