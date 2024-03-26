{{ config(materialized='table') }}

with tracks as (
  select
    artists_name,
    album_name,
    track_name,
    popularity,
    duration_minute,
    genre,
    -- Calculate rank based on popularity within each track_id partition
    row_number(113999) over (partition by track_name order by popularity desc) as rank
  from {{ ref('stg_spotify') }}  -- Reference the staging model
),

result as (
  select
    count(distinct artists_name) as count_artist_name,
    count(distinct album_name) as count_album_name,
    count(distinct track_name) as count_track_name,
    count(distinct genre) as count_genre,
    max(duration_minute) as longest_track_duration,
    -- Use FIRST_VALUE to get the most popular track within each partition
    first_value(track_name) over (order by popularity desc) as most_popular_track_name,
    max(popularity) as most_popular_score
  from tracks
)

select 
  count_artist_name,
  count_album_name,
  count_track_name,
  count_genre,
  longest_track_duration,
  most_popular_track_name,
  most_popular_score
from result;
