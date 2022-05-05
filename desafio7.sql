SELECT artista_nome AS artista, album_nome as album,
count(s.user_id) AS seguidores
FROM SpotifyClone.artistas at
INNER JOIN SpotifyClone.album ab
on at.artista_id = ab.artista_id
INNER JOIN SpotifyClone.seguindo_artista s
ON s.artista_id = at.artista_id
GROUP BY album, artista_nome
ORDER BY seguidores DESC, artista, album;