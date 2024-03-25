WITH MinDuration AS (
  SELECT
    MIN(duration_minute) AS min_duration_minute
  FROM
    `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh`
)

SELECT
  artists,
  track_name,
  track_genre,
  duration_minute
FROM
  `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh`, MinDuration
WHERE
  duration_minute = MinDuration.min_duration_minute
