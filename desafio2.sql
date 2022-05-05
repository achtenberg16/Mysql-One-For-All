SELECT COUNT(musica_nome) as cancoes, 
(SELECT COUNT(*) FROM SpotifyClone.artistas) as artistas,
(SELECT COUNT(*) FROM SpotifyClone.album) as albuns
FROM SpotifyClone.musicas
