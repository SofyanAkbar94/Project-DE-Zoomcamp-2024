WITH MaxDuration AS (
  SELECT
    MAX(duration_minute) AS max_duration_minute
  FROM
    `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh`
)

SELECT
  artists,
  track_name,
  track_genre,
  duration_minute
FROM
  `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh`, MaxDuration
WHERE
  duration_minute = MaxDuration.max_duration_minute
