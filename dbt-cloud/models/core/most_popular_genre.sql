{{ 
    config(
        materialized='table'
        ) 
}}

with genre_popularity as (
  select
    genre,
    sum(popularity) as total_popularity
  from {{ ref('stg_spotify') }}
  group by genre
)

select
  genre,
  total_popularity
from genre_popularity
order by total_popularity desc
limit 10
