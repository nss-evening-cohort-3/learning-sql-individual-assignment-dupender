--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT a.PlayListId, COUNT(a.PlaylistId), b.Name

FROM
PlaylistTrack AS a
JOIN Playlist AS b
ON a.PlaylistId = b.PlaylistId

GROUP BY a.PlayListId

