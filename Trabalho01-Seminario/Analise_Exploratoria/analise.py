import re
import pandas as pd
from scipy import stats

df = pd.read_csv('../database/Sao_paulo.csv')

df['Is_mensal'] = df['Price'].str.contains('/M[eê]s', case=False, na=False)
df['Price'] = df['Price'].str.replace('R$', '', regex=False)
df['Price'] = df['Price'].str.strip()
df['Price'] = df['Price'].str.replace(r'[^\d,.]', '', regex=True)
df['Price'] = df['Price'].str.replace('.', '', regex=False)
df['Price'] = df['Price'].str.replace(',', '.', regex=False)
df['Price'] = pd.to_numeric(df['Price'], errors='coerce')
df['Rooms'] = df['Rooms'].apply(lambda x: int(str(x).split('-')[-1].strip()) if pd.notna(x) else None)
df['Bathrooms'] = df['Bathrooms'].apply(lambda x: int(str(x).split('-')[-1].strip()) if pd.notna(x) else None)
df['Parking_spaces'] = df['Parking_spaces'].apply(lambda x: int(str(x).split('-')[-1].strip()) if pd.notna(x) else None)
df['Area_detail'] = df['Area_detail'].apply(lambda x: int(str(x).split('-')[-1].strip()) if pd.notna(x) else None)
df['Street'] = df['Street'].astype(str)
df['Street'] = df['Street'].str.replace(r'\d+', '', regex=True)  # Remove TODOS os números
df['Street'] = df['Street'].str.replace(r',\s*$', '', regex=True)  # Remove vírgulas no final
df['Street'] = df['Street'].str.strip()
df['Street'] = df['Street'].str.replace(r',$', '', regex=True)  # Remove vírgula sobrando
df['City'] = df['City'].replace('SP', 'São Paulo')
df['City'] = df['City'].str.replace(' Sp ', ' São Paulo ', case=False)
df['City'] = df['City'].str.replace('^SP$', 'São Paulo', regex=True, case=False)
df['Street'] = df['Street'].str.replace(r'\s*\([^)]*\)', '', regex=True)
df['City'] = df['City'].str.replace(r'\s*\([^)]*\)', '', regex=True)
df['Neighborhood'] = None
mask1 = df['Street'].str.contains(', São Paulo', na=False)
df.loc[mask1, 'Neighborhood'] = df.loc[mask1, 'Street'].str.split(',').str[0].str.strip()
df.loc[mask1, 'Street'] = None
mask2 = df['City'].str.contains(',', na=False)
df.loc[mask2, 'Neighborhood'] = df.loc[mask2, 'City'].str.split(',').str[0].str.strip()
df.loc[mask2, 'City'] = df.loc[mask2, 'City'].str.split(',').str[-1].str.strip()
df['City'] = df['City'].str.strip()
df.loc[df['City'] == 'SP', 'City'] = 'São Paulo'
df.loc[df['City'] == 'Sp', 'City'] = 'São Paulo'
df.loc[df['City'] == '', 'City'] = 'São Paulo'
df['City'] = df['City'].fillna('São Paulo')
df['Street'] = df['Street'].str.replace(r',\s*,', ',', regex=True)  # Remove vírgulas duplicadas
df['Street'] = df['Street'].str.replace(r'^\s*,', '', regex=True)  # Remove vírgula no início
df['Street'] = df['Street'].str.replace(r',$', '', regex=True)  # Remove vírgula no final
df['Street'] = df['Street'].str.strip()
df['Street'] = df['Street'].replace('', None)
df['Street'] = df['Street'].replace('nan', None)
df.to_csv('../database/Sao_paulo_clean.csv', index=False, encoding='utf-8-sig')

print(df['Is_mensal'].mean() * 100)

# print(df.sample(n=2))
# print(df_idless.mean(numeric_only=True))
# print(df_idless.median(numeric_only=True))
# print(stats.trim_mean(df_clean, proportiontocut=0.1))
# print((df_numeric_only - df_numeric_only.mean()).abs().mean())
# print(df_idless.var(numeric_only=True))
# print(df_idless.std(numeric_only=True))
# print(stats.median_abs_deviation(df_clean))
# print(df_clean.max(numeric_only=True))
# print(df_clean.min(numeric_only=True))
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