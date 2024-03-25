import io
import pandas as pd
import requests
from pandas import DataFrame

if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data_from_api(**kwargs) -> DataFrame:
    """
    Template for loading data from API
    """
    url = 'https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset/resolve/c4609440b24ac4075899f6e60b33775acbe00827/dataset.csv?download=true'
    
    spotify_dtypes = {

    'Unnamed: 0': pd.Int64Dtype(),
    'track_id': str,
    'artists' : str,
    'album_name' : str,
    'track_name' : str,
    'popularity' : pd.Int64Dtype(),
    'duration_ms' : pd.Int64Dtype(),
    'explicit' : bool,
    'danceability' : pd.Float64Dtype(),
    'energy' : pd.Float64Dtype(),
    'key' : pd.Int64Dtype(),
    'loudness' : pd.Float64Dtype(),
    'mode' : pd.Int64Dtype(),
    'speechiness' : pd.Float64Dtype(),
    'acousticness' : pd.Float64Dtype(),
    'instrumentalness' : pd.Float64Dtype(),
    'liveness' : pd.Float64Dtype(),
    'valence' : pd.Float64Dtype(),
    'tempo' : pd.Float64Dtype(),
    'time_signature' : pd.Int64Dtype(),
    'track_genre' : str
    }

    return pd.read_csv(url, sep=",", dtype=spotify_dtypes)


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
