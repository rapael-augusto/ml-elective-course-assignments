import pandas as pd
import matplotlib.pyplot as plt

columns = ["sepal-length", "sepal-width", "petal-length", "petal-width", "class"]
df = pd.read_csv("../databases/iris/iris.data", names=columns)

# A) boxplot
#fig, axes = plt.subplots(2, 2, figsize=(10, 8))
#axes = axes.flatten()

#for i, var in enumerate(columns[:-1]):
#    df[var].plot.box(ax=axes[i])

#plt.show()

# B) tabelas de frequência, 3 intervalos
#for var in columns[:-1]:
#    print(f"\nFrequency table, {len(df[var])} examples:")
#    frequency = pd.cut(df[var], bins=3).value_counts().sort_index()
#    print(frequency.to_string())

# C) tabelas de frequência, 5 intervalos
#for var in columns[:-1]:
#    print(f"\nFrequency table, {len(df[var])} examples:")
#    frequency = pd.cut(df[var], bins=5).value_counts().sort_index()
#    print(frequency.to_string())

# D) histogramas
#fig, axes = plt.subplots(2, 2, figsize=(10, 8))
#axes = axes.flatten()

#for i, var in enumerate(columns[:-1]):
#    ax = df[var].plot.hist(ax=axes[i], fig=(4, 4))
#    ax.set_xlabel(var)

#plt.show()

# E) gráco de estimativa de densidade
#fig, axes = plt.subplots(2, 2, figsize=(10, 8))
#axes = axes.flatten()

#for i, var in enumerate(columns[:-1]):
#    ax = df[var].plot.hist(density=True, xlim=[0, 8], ax=axes[i])
#    df[var].plot.density(ax=ax)
#    ax.set_xlabel(var)

#plt.show()