version: 2

models:
    - name: total_album_artist_song_genre
      description: total statistic of album, artist, song, genre, duration
      columns:
          - name: total_artists 
            description: total artist of each artist
          - name: total_albums
            description: total album of each album
          - name: total_tracks
            description: total song of each song
          - name: total_genres
            description: total genre of each genre
          - name: total_duration
            description: total duration of each song

models:
    - name: most_shortest_duration_song_artist_genre
      description: total statistic of album, artist, song, genre, duration
      columns:
          - name: artists_name 
            description: name of artist
          - name: track_name
            description: name of song
          - name: duration_minute
            description: duration of song
          - name: genre
            description: name of genre