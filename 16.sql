--Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.

SELECT a.Name AS 'Track Name', b.Title AS 'Album Name', c.Name AS 'MediaType Name', d.Name AS 'Genre Name'

FROM
Track AS a
JOIN Album AS b
ON a.AlbumId = b.AlbumId
JOIN MediaType AS c
ON a.MediaTypeId = c.MediaTypeId
JOIN Genre AS d 
ON a.GenreId = d.GenreId
