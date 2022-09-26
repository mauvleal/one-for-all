SELECT COUNT(his.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.usuarios AS us ON his.usuario_id = us.usuario_id
WHERE us.usuario = 'Barbara Liskov'