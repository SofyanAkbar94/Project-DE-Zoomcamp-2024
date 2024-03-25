CREATE TABLE `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh_clustered`
CLUSTER BY track_genre
AS
SELECT * FROM `project-de-zoomcamp-418214.project_spotify_dataset.spotify_rm_dwh`;
