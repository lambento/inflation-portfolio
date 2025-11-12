from sqlalchemy import create_engine
import pandas as pd
import os

DB_URL = os.getenv("DATABASE_URL")  # set this via OS or .env

def load_csv_to_table(csv_path, table_name):
    df = pd.read_csv(csv_path, parse_dates=True, index_col=0)
    engine = create_engine(DB_URL)
    df.to_sql(table_name, engine, if_exists='replace', index=True)
    print(f"Loaded {csv_path} to {table_name}")

if __name__ == "__main__":
    load_csv_to_table("data/raw/monthly_returns.csv", "raw_prices")
