import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    df = products.query("low_fats == 'Y' & recyclable == 'Y'")
    return pd.DataFrame(df['product_id'])
