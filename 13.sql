SELECT InvoiceLine.InvoiceLineId, Track.Name AS 'TRACK NAME', Artist.Name AS 'ARTIST NAME'

FROM
InvoiceLine 
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
JOIN Album
ON Album.AlbumId = Track.AlbumId
JOIN Artist
ON Artist.ArtistId = Album.ArtistId

ORDER BY InvoiceLineId

