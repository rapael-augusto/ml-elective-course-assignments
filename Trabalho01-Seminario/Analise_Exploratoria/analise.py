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

print(df.sample(n=2))

print("Amostra (2 linhas):\n", df.sample(n=2), "\n")

#média
print("Média:\n", df.mean(numeric_only=True), "\n")

#mediana
print("Mediana:\n", df.median(numeric_only=True), "\n")

#média aparada
df_sem_nan = df_numeric.fillna(df_numeric.mean())
print("Média Aparada:\n", stats.trim_mean(df_sem_nan, proportiontocut=0.1), "\n")

#desvio Médio Absoluto
print("Desvio Médio Absoluto:\n", (df_numeric - df_numeric.mean()).abs().mean(), "\n")

#variância
print("Variância:\n", df.var(numeric_only=True), "\n")

#desvio padrão
print("Desvio Padrão:\n", df.std(numeric_only=True), "\n")

#desvio Aasoluto mediano
df_mediana = df_numeric.fillna(df_numeric.median())
print("Desvio Absoluto Mediano:\n", stats.median_abs_deviation(df_mediana), "\n")

#max
print("Máximo:\n", df.max(numeric_only=True), "\n")

#min
print("Mínimo:\n", df.min(numeric_only=True), "\n")

#amplitude
print("Amplitude:\n", df.max(numeric_only=True) - df.min(numeric_only=True), "\n")

#percentis
print("Percentil 10%:\n", df.quantile(q=0.1, numeric_only=True), "\n")
print("Percentil 25% (Q1):\n", df.quantile(q=0.25, numeric_only=True), "\n")
print("Percentil 75% (Q3):\n", df.quantile(q=0.75, numeric_only=True), "\n")
print("Percentil 90%:\n", df.quantile(q=0.9, numeric_only=True), "\n")

#IQR
print("IQR (Q3 - Q1):\n", df.quantile(q=0.75, numeric_only=True) - df.quantile(q=0.25, numeric_only=True), "\n")

#Outliers
df_clean = df_numeric.dropna()
iq_range = df_clean.quantile(q=0.75) - df_clean.quantile(q=0.25)
lower_edge = df_clean.quantile(q=0.25) - (1.5 * iq_range)
upper_edge = df_clean.quantile(q=0.75) + (1.5 * iq_range)
query = (df_clean < lower_edge) | (df_clean > upper_edge)
print("Outliers por coluna:\n", query.sum(), "\n")
print("Linhas com outliers:\n", df_clean[query.any(axis=1)].head(10))