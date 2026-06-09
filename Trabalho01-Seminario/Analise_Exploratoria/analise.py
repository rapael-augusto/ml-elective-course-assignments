import pandas as pd
from scipy import stats

columns = ['Order_ID', 'Distance_Km', 'Weather', 'Traffic_Level', 'Time_of_Day', 
           'Vehicle_Type', 'Preparation_Time', 'Courier_Experience_yrs', 'Delivery_Time_Min']
df = pd.read_csv('../database/Food_Delivery_Times.csv')
df_idless = df.drop(columns=['Order_ID'])
df_numeric_only = df_idless.drop(columns=['Weather', 'Traffic_Level', 'Time_of_Day', 'Vehicle_Type'])
df_clean = df_numeric_only.dropna()

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