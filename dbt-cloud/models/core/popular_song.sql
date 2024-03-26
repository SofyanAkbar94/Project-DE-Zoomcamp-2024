{{
  config(
    materialized = 'table',
    )
}}
with albums as (
  select
    id,
    album_name,
    popularity
  from {{ ref("stg_album") }} 
),

artists as (
  select 
    id,
    artists_name,
    popularity
   from {{ ref("stg_artist") }}
    where genre is not null
),

tracks as (
  select
    id,
    track_name,
    duration_minute,
    popularity
  from {{ ref('stg_track') }}
),

df as (
  select 
    ar.genre
   ,ar.id artist_id
   ,al.id album_id
   ,tr.duration
   ,m.id merch_id
  from artists ar
  left join albums al
         on ar.id = al.artist_id
  left join tracks tr
         on al.id = tr.album_id
  left join merch m
         on al.id = m.album_id 
),

result as (
  select
    count(distinct artists_name) total_artists
    count(distinct album_name) total_albums
    count(distinct track_name) total_albums
    count(distinct genre) total_genre
    max popularity order by desc
    max duration_minute order by asc
  from df
  group by 10
)

select * from result