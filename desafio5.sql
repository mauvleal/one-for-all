SELECT musica as cancao, 
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas as mus
INNER JOIN SpotifyClone.historico AS his ON mus.musica_id = his.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, musica ASC
limit 2;