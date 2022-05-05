SELECT musica_nome AS nome, count(m.musica_id) as reproducoes FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico_reproducoes h
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.users u
ON u.user_id = h.user_id
WHERE plano_id IN (1,2)
GROUP BY musica_nome
ORDER BY nome;