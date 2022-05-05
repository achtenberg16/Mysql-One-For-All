SELECT count(*)  AS quantidade_musicas_no_historico FROM SpotifyClone.historico_reproducoes
WHERE user_id = (SELECT user_id FROM SpotifyClone.users
WHERE user_nome like '%Bill%');