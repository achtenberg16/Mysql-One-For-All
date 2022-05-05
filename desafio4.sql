SELECT user_nome AS usuario,
(CASE WHEN  MAX(data_reproducao) > '2021-01-01-00:00:00' THEN "Usuário ativo"
ELSE "Usuário inativo"
END ) AS condicao_usuario
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.historico_reproducoes h
ON u.user_id = h.user_id
GROUP BY user_nome;