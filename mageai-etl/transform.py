import pandas as pd
from pandas import DataFrame

if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(df, *args, **kwargs):
    # Rename the unnamed column to "no_id"
    df = df.rename(columns={"Unnamed: 0": "no_id"})
    return df


@test
def test_output(output, *args):
    assert output is not None, 'The output is undefined'
