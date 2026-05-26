import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

columns = ["buying", "maint", "doors", "persons", "lug_boot", "safety", "class"]
df = pd.read_csv("../databases/car+evaluation/car.data", names=columns)

# A) gráfico de barras
#fig, axes = plt.subplots(2, 3, figsize=(15, 10))
#axes = axes.flatten()

#for i, var in enumerate(columns[:-1]):
#    df[var].value_counts().plot(kind='bar', ax=axes[i], color='blue')
#    axes[i].set_xlabel(var)
#    axes[i].set_ylabel('frquency')

#plt.tight_layout()
#plt.show()

# B) gráfico de pizza
#fig, axes = plt.subplots(2, 3, figsize=(15, 10))
#axes = axes.flatten()

#for i, var in enumerate(columns[:-1]):
#    df[var].value_counts().plot(kind="pie", ax=axes[i], autopct='%1.1f%%', startangle=90)
#    axes[i].set_xlabel(var)

#plt.tight_layout()
#plt.show()

# C) moda
#print(df.mode()) 

# D) valor esperado
#expected_df = df["doors"].replace("5more", 5).astype(int)
#weights = expected_df.value_counts()
#print((weights.index * (weights.values / weights.values.sum())).values.sum())
#^ this one, multiplyes the index (number of doors) by each %, which is the values/values.sum(), then sum everything to get the
#expected value

# E) gráfico enganoso
#contagem = df['class'].value_counts()

# This graph does not start at 0 and ends in 450, making it seems as if "good" and "vgood" have no values and "unacc" is not that big
#plt.figure(figsize=(6, 4))
#plt.bar(contagem.index, contagem.values)
#plt.ylim(350, 450)
#plt.title('class distribution')
#plt.ylabel('frequency')
#plt.show()