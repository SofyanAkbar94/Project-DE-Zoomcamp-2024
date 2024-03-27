{{ 
    config(
        materialized='table'
    ) 
}}

with longest_track_per_song as (
  select
    artists_name,
    track_name,
    duration_minute,
    row_number() over (order by duration_minute asc) as track_rank,
    genre
  from {{ ref('stg_spotify') }}
)

select
  artists_name,
  track_name,
  duration_minute,
  genre
from longest_track_per_song
where track_rank <= 5
