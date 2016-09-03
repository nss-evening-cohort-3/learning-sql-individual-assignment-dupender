SELECT SUM(e.Total), b.Name

FROM Album AS a
JOIN Artist AS b
ON a.ArtistId = b.ArtistId
JOIN Track AS c
ON a.AlbumId = c.AlbumId
Join InvoiceLine AS d
ON d.TrackId = c.TrackId
Join Invoice AS e
ON e.InvoiceId = d.InvoiceId

GROUP BY b.ArtistId 

ORDER BY SUM(e.Total) DESC

LIMIT 3
