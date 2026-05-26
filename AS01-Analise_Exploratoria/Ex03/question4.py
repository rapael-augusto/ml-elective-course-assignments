import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

columns = ["class", "alcohol", "malicacid", "ash", "alcalinity-of-ash", "magnesium", "total-phenols", "flavanoids",
           "nonflavanoid-phenols", "proanthocyanins", "color-intensity", "hue", "0D280_0D315_of_diluted_wines", "proline"]
df = pd.read_csv("../databases/wine/wine.data", names=columns)

fig, axes = plt.subplots(3, 5, figsize=(20, 15))
axes = axes.flatten()

for i, var in enumerate(columns[1:]):
    sns.violinplot(data=df, x='class', y=var, ax=axes[i])
    axes[i].set_xlabel('class')
    axes[i].set_ylabel('value')
    axes[i].set_title(var)

for i in range(len(columns[1:]), len(axes)):
    fig.delaxes(axes[i])

plt.tight_layout()
plt.show()