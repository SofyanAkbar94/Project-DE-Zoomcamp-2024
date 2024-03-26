{{ config(materialized='table') }}

with tracks as (
  select
    genre,
    count(*) as genre_count,
    sum(popularity) as genre_popularity
  from {{ ref('stg_spotify') }}
  group by genre
),

top_10_genres as (
  select
    genre,
    genre_count,
    genre_popularity,
    rank() over (order by genre_popularity desc) as genre_rank
  from tracks
)

select
  genre,
  genre_count,
  genre_popularity
from top_10_genres
where genre_rank <= 10
