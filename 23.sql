SELECT "Country That Spent Most", MAX("Total Sales")

FROM
(SELECT a.BillingCountry AS 'Country That Spent Most', SUM(a.Total) AS 'Total Sales'

FROM Invoice AS a

GROUP BY a.BillingCountry)