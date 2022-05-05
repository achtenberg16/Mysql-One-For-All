SELECT artista_nome AS artista, album_nome AS album FROM SpotifyClone.artistas at
INNER JOIN SpotifyClone.album ab
ON at.artista_id = ab.artista_id
WHERE artista_nome = "Walter Phoenix"
ORDER BY album;