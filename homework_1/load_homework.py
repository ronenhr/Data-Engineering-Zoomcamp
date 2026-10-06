import pandas as pd
from sqlalchemy import create_engine

engine = create_engine('postgresql+psycopg://root:root@localhost:5432/ny_taxi')

trips = pd.read_parquet('green_tripdata_2025-11.parquet')
trips.to_sql('green_taxi_data', engine, if_exists='replace', index=False)

zones = pd.read_csv('taxi_zone_lookup.csv')
zones.to_sql('zones', engine, if_exists='replace', index=False)

print(len(trips), len(zones))

