SELECT
a.InvoiceId,
a.CustomerId,
a.InvoiceDate,
a.BillingAddress,
a.BillingCity,
a.BillingState,
a.BillingCountry,
a.BillingPostalCode, 
a.Total,
c.FirstName ||', '||  c.LastName AS ' Agent NAME'

FROM
Invoice AS a
JOIN Customer AS b
ON a.CustomerId = b.CustomerId
JOIN Employee AS c
ON b.SupportRepId = c.EmployeeId

