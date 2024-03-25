if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(df, *args, **kwargs):
    # Check where 'duration_minute' column contains 0 and more than 0
    null_df = df[df['duration_minute'].isin([0])]
    null_count = null_df['duration_minute'].count()
    not_null_df = df[df['duration_minute'] > 0]
    not_null_count = not_null_df['duration_minute'].count()
    print(f'Preprocessing: records with zero duration: {null_count}')
    print(f'Preprocessing: records with not zero: {not_null_count}')
    # Delete rows where 'duration_minute' column contains 0
    df.drop(df[df['duration_minute'] == 0].index, inplace=True)
    return(df)
