import pandas as pd
from scipy import stats

# Reading the data (Why this thing is ".data" instead of ".csv"?)
columns = ["class", "alcohol", "malicacid", "ash", "alcalinity-of-ash", "magnesium", "total-phenols", "flavanoids",
           "nonflavanoid-phenols", "proanthocyanins", "color-intensity", "hue", "0D280_0D315_of_diluted_wines", "proline"]
df = pd.read_csv("../databases/wine/wine.data", names=columns)
df_no_class = df.drop(columns=["class"])

# A) representação tabular: (This one uses ".sample" method, so, by grouping the dataframe by "class", the code picks two random from each one)
#print(df.groupby(["class"]).sample(n=2))

# B) média
# print(df.mean(numeric_only=True))

# C) mediana
# print(df.median(numeric_only=True))

# D): média aparada (Pandas doesn't have a trim_mean method, but scipy does, although i need to drop the class column...)
# print('\n'.join([f"{columns[i]}: {var}" for i, var in enumerate(stats.trim_mean(df_no_class, proportiontocut=0.1))]))

# E) desvio absoluto médio
# print((df_no_class - df_no_class.mean()).abs().mean())

# F) variância
# print(df.var(numeric_only=True))

# G) desvio-padrão
# print(df.std(numeric_only=True))

# H) desvio absoluto mediano da mediana
# print('\n'.join([f"{columns[i]}: {var}" for i, var in enumerate(stats.median_abs_deviation(df_no_class))]))

# I) máximo
# print(df.max(numeric_only=True))

# J) mínimo
# print(df.min(numeric_only=True))

# K) amplitude
# print(df.max(numeric_only=True) - df.min(numeric_only=True))

# L) 10o percentil
# print(df.quantile(q=0.1, numeric_only=True))

# M) 25o percentil
# print(df.quantile(q=0.25, numeric_only=True))

# N) 75o percentil
# print(df.quantile(q=0.75, numeric_only=True))

# O) 90o percentil
# print(df.quantile(q=0.9, numeric_only=True))

# P) amplitude interquartil
# print(df.quantile(q=0.75, numeric_only=True) - df.quantile(q=0.25, numeric_only=True))

# Q) outliers (using the iqr method, 1.5 standart multiplier)
# iq_range = df_no_class.quantile(q=0.75, numeric_only=True) - df_no_class.quantile(q=0.25, numeric_only=True)
# lower_edge = df_no_class.quantile(q=0.25, numeric_only=True) - (1.5 * iq_range)
# upper_edge = df_no_class.quantile(q=0.75, numeric_only=True) + (1.5 * iq_range)
# query = (df_no_class < lower_edge) | (df_no_class > upper_edge)
# print(query.sum())
# print(df_no_class[query.any(axis=1)].where(query[query.any(axis=1)]))