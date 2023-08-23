import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    df = world.query("area >= 3000000 | population >= 25000000 ")

    return df[['name', 'population', 'area']]
