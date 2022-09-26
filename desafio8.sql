SELECT artista, album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = ar.artista_id
HAVING ar.artista = 'Elis Regina'
ORDER BY album