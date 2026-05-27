import pandas as pd
import matplotlib.pyplot as plt
import math as mt
import seaborn as sns

columns = ["sepal-length", "sepal-width", "petal-length", "petal-width", "class"]
df = pd.read_csv("../databases/iris/iris.data", names=columns)

# A) boxplot
# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns[:-1]):
#     df[var].plot.box(ax=axes[i])

# print("medianas:\n",df.median(numeric_only=True))
# print("25º quartils:\n",df.quantile(q=0.25, numeric_only=True))
# print("75º quartils:\n",df.quantile(q=0.75, numeric_only=True))
# iq_range = df.quantile(q=0.75, numeric_only=True) - df.quantile(q=0.25, numeric_only=True)
# print("bigode inferior:\n",df.quantile(q=0.25, numeric_only=True) - (1.5 * iq_range))
# print("bigode superior:\n",df.quantile(q=0.75, numeric_only=True) + (1.5 * iq_range))

# plt.show()

# B) tabelas de frequência, 3 intervalos
# for var in columns[:-1]:
#     print(pd.crosstab(pd.cut(df[var], bins=3), df['class']))

# C) tabelas de frequência, 5 intervalos
# for var in columns[:-1]:
#    print(pd.crosstab(pd.cut(df[var], bins=5), df['class']))

# D) histogramas
# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns[:-1]):
#    ax = df[var].plot.hist(ax=axes[i], fig=(4, 4))
#    ax.set_xlabel(var)

# plt.show()

# E) gráfico de estimativa de densidade
# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns[:-1]):
#     sns.histplot(data=df, x=var, kde=True, stat='density', ax=axes[i])
#     axes[i].set_xlim(mt.floor(df[var].min()), mt.ceil(df[var].max()))
#     axes[i].set_xlabel(var)
#     axes[i].set_ylabel('density')

# plt.show()