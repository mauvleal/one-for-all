SELECT artista as artista, album,
COUNT(se.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguidas AS se ON ar.artista_id = se.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album