{{ 
    config(
        materialized='table'
    ) 
    }}

with counts as (
  select
    count(distinct artists_name) as total_artists,
    count(distinct album_name) as total_albums,
    count(distinct track_name) as total_tracks,
    count(distinct genre) as total_genres,
    count(distinct duration_minute) as total_duration
  from {{ ref('stg_spotify') }}
)

select
  total_artists,
  total_albums,
  total_tracks,
  total_genres,
  total_duration
from counts
