SELECT musica_nome AS nome_musica, CASE WHEN musica_nome like "%Streets" THEN 
REPLACE(musica_nome, 'Streets', 'Code Review')
WHEN musica_nome like "%Her Own" THEN 
REPLACE(musica_nome, 'Her Own', 'Trybe')
WHEN musica_nome like "%Inner Fire" THEN 
REPLACE(musica_nome, 'Inner Fire', 'Project')
WHEN musica_nome like "%Silly" THEN 
REPLACE(musica_nome, 'Silly', 'Nice')
WHEN musica_nome like "%Circus" THEN 
REPLACE(musica_nome, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.musicas
WHERE
musica_nome LIKE '%Streets'
OR musica_nome LIKE '%Her Own'
OR musica_nome LIKE '%Inner Fire'
OR musica_nome LIKE '%Silly'
OR musica_nome LIKE '%Circus'
ORDER BY nome_musica;

