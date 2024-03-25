import pandas as pd
from pandas import DataFrame

if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
# Define a function to rename and convert the column
def rename_convert_column(df):
    # Rename the column
    df.rename(columns={'duration_ms': 'duration_minute'}, inplace=True)
    # Convert milliseconds to minutes
    df['duration_minute'] = df['duration_minute'] / 60000
    return df


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
