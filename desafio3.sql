SELECT u.user_nome AS usuario, count(h.musica_id) AS qtde_musicas_ouvidas, ROUND((sum(m.duracao_sec)/60), 2) AS total_minutos
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.historico_reproducoes h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.musicas m 
ON m.musica_id = h.musica_id
GROUP BY user_nome;


