SELECT us.usuario AS usuario,
COUNT(his.musica_id) as qt_de_musicas_ouvidas,
ROUND(SUM(mus.duracao)/60, 2) as total_minutos
FROM SpotifyClone.usuarios as us
INNER JOIN SpotifyClone.historico AS his
  ON us.usuario_id = his.usuario_id
  INNER JOIN SpotifyClone.musicas AS mus
  ON his.musica_id = mus.musica_id
  GROUP BY usuario;