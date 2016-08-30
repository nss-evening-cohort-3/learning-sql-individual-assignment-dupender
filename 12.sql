SELECT InvoiceLine.InvoiceLineId, track.name

FROM InvoiceLine 

JOIN Track 

ON InvoiceLine.TrackId = Track.TrackID

ORDER BY InvoiceLineId
