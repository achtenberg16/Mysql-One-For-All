SELECT musica_nome AS cancao, count(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico_reproducoes h
ON m.musica_id = h.musica_id
GROUP BY musica_nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;