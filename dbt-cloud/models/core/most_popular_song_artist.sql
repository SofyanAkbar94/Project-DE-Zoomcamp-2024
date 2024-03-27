{{ 
    config(
        materialized='table'
    ) 
    }}

with ranked_tracks as (
  select
    artists_name,
    track_name,
    popularity,
    row_number() over (order by popularity desc) as track_rank
  from {{ ref('stg_spotify') }}
)

select
  distinct artists_name,
  track_name,
  popularity
from ranked_tracks
where track_rank <= 30
limit 10
