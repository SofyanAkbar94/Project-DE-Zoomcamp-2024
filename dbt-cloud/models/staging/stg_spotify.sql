{{
  config(
    materialized = 'view',
    )
}}
select
  track_id,
  artists as artists_name,
  album_name,
  track_name,
  popularity,
  duration_minute,
  track_genre as genre
from project_spotify_dataset.spotify_rm_dwh

