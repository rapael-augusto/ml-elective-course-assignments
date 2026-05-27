import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

columns = ["class", "alcohol", "malicacid", "ash", "alcalinity-of-ash", "magnesium", "total-phenols", "flavanoids",
           "nonflavanoid-phenols", "proanthocyanins", "color-intensity", "hue", "0D280_0D315_of_diluted_wines", "proline"]
df = pd.read_csv("../databases/wine/wine.data", names=columns)

fig, axes = plt.subplots(3, 5, figsize=(25, 18))
axes = axes.flatten()

for i, var in enumerate(columns[1:]):
    sns.violinplot(data=df, x='class', y=var, ax=axes[i])
    axes[i].set_ylabel('value')
    axes[i].set_title(var)
    axes[i].grid(True, axis='y')

for i in range(len(columns[1:]), len(axes)):
    fig.delaxes(axes[i])

print(df.min(numeric_only=True))
print(df.max(numeric_only=True))
print(df.quantile(q=0.25, numeric_only=True))
print(df.median(numeric_only=True))
print(df.quantile(q=0.75, numeric_only=True))

plt.tight_layout(pad=1)
plt.show()