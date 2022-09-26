SELECT musica AS nome,
COUNT(data_reproducao) AS reproducoes
 FROM SpotifyClone.musicas AS mu
 INNER JOIN SpotifyClone.historico AS his ON mu.musica_id = his.musica_id
 INNER JOIN SpotifyClone.usuarios AS us ON us.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.planos AS pl ON us.plano_id = pl.plano_id
 GROUP BY nome, pl.plano_id
HAVING pl.plano_id = 1 OR pl.plano_id = 4
 ORDER BY nome