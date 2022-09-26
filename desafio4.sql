SELECT usuario AS usuario,
IF (YEAR(MAX(his.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico AS his ON us.usuario_id = his.usuario_id
GROUP BY usuario
ORDER BY USUARIO ASC
