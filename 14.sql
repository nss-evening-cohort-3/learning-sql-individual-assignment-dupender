SELECT BillingCountry, COUNT(BillingCountry)

FROM
Invoice

GROUP BY BillingCountry