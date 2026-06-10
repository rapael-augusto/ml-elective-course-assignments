import re
import pandas as pd
from scipy import stats
import numpy as np

df = pd.read_csv('../database/laptopPrice.csv')

df['processor_gnrtn'] = df['processor_gnrtn'].astype(str)
df['processor_gnrtn'] = df['processor_gnrtn'].str.replace(r'(st|nd|rd|th)', '', regex=True)
df['processor_gnrtn'] = df['processor_gnrtn'].str.strip()
df['processor_gnrtn'] = df['processor_gnrtn'].replace('Not Available', None)
df['processor_gnrtn'] = df['processor_gnrtn'].replace('nan', None)
df['processor_gnrtn'] = pd.to_numeric(df['processor_gnrtn'], errors='coerce')

df['ram_gb'] = df['ram_gb'].astype(str)
df['ram_gb'] = df['ram_gb'].str.replace('GB', '', regex=False)
df['ram_gb'] = df['ram_gb'].str.replace('Gb', '', regex=False)
df['ram_gb'] = df['ram_gb'].str.strip()
df['ram_gb'] = pd.to_numeric(df['ram_gb'], errors='coerce')

for col in ['ssd', 'hdd']:
    if col in df.columns:
        df[col] = df[col].astype(str)
        df[col] = df[col].str.replace('GB', '', regex=False)
        df[col] = df[col].str.replace('Gb', '', regex=False)
        df[col] = df[col].str.strip()
        df[col] = pd.to_numeric(df[col], errors='coerce')
        df[col] = df[col].fillna(0).astype(int)

df['os_bit'] = df['os_bit'].astype(str)
df['os_bit'] = df['os_bit'].str.replace('-bit', '', regex=False)
df['os_bit'] = df['os_bit'].str.strip()
df['os_bit'] = pd.to_numeric(df['os_bit'], errors='coerce')

df['graphic_card_gb'] = df['graphic_card_gb'].astype(str)
df['graphic_card_gb'] = df['graphic_card_gb'].str.replace('GB', '', regex=False)
df['graphic_card_gb'] = df['graphic_card_gb'].str.replace('Gb', '', regex=False)
df['graphic_card_gb'] = df['graphic_card_gb'].str.strip()
df['graphic_card_gb'] = pd.to_numeric(df['graphic_card_gb'], errors='coerce')
df['graphic_card_gb'] = df['graphic_card_gb'].fillna(0).astype(int)

df['warranty'] = df['warranty'].astype(str)
df['warranty'] = df['warranty'].str.extract(r'(\d+)')
df['warranty'] = pd.to_numeric(df['warranty'], errors='coerce')
df['warranty'] = df['warranty'].fillna(0).astype(int)

df['rating'] = df['rating'].astype(str)
df['rating'] = df['rating'].str.replace('stars', '', regex=False)
df['rating'] = df['rating'].str.replace('star', '', regex=False)
df['rating'] = df['rating'].str.replace('s', '', regex=False)
df['rating'] = df['rating'].str.strip()
df['rating'] = pd.to_numeric(df['rating'], errors='coerce')

df['Price'] = df['Price'] * 0.054
df['Price'] = df['Price'].round(2)

df.to_csv('../database/laptopPrice_clean.csv', index=False, encoding='utf-8-sig')

df_numeric = df.select_dtypes(include=[np.number])

# print(df.sample(n=2))
# print(df.mean(numeric_only=True))
# print(df.median(numeric_only=True))
# print(stats.trim_mean(df_numeric.apply(lambda x: x.fillna(x.mean()), axis=0), proportiontocut=0.1))
# print((df_numeric - df_numeric.mean()).abs().mean())
# print(df.var(numeric_only=True))
# print(df.std(numeric_only=True))
# print(stats.median_abs_deviation(df_numeric.apply(lambda x: x.fillna(x.mean()))))
# print(df.max(numeric_only=True))
# print(df.min(numeric_only=True))
# print(df.max(numeric_only=True) - df.min(numeric_only=True))
# print(df.quantile(q=0.1, numeric_only=True))
# print(df.quantile(q=0.25, numeric_only=True))
# print(df.quantile(q=0.75, numeric_only=True))
# print(df.quantile(q=0.9, numeric_only=True))
# print(df.quantile(q=0.75, numeric_only=True) - df.quantile(q=0.25, numeric_only=True))


# iq_range = df_clean.quantile(q=0.75) - df_clean.quantile(q=0.25)
# lower_edge = df_clean.quantile(q=0.25) - (1.5 * iq_range)
# upper_edge = df_clean.quantile(q=0.75) + (1.5 * iq_range)
# query = (df_clean < lower_edge) | (df_clean > upper_edge)
# print(query.sum())
# print(df_clean[query.any(axis=1)])