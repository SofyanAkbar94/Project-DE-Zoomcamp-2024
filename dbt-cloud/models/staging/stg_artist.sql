{{
  config(
    materialized = 'view',
    )
}}
select
    no_id as id,
    artists as artists_name,
    duration_minute, 
    popularity
from project_spotify_dataset.spotify_rm_dwh
{% if var('is_test_run', default=true) %}
limit 1000
{% endif %}