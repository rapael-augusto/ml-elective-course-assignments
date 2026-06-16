import pandas as pd
import matplotlib.pyplot as plt
import math as mt
import seaborn as sns
import numpy as np
from pandas.plotting import scatter_matrix

df = pd.read_csv('../database/laptopPrice_clean.csv')

columns = df.columns
df_numeric = df.select_dtypes(include=[np.number])
colunas = df_numeric.columns[:6]
n_colunas = len(colunas)


# sns.heatmap(df.corr(numeric_only=True), 
#             cmap='coolwarm', 
#             vmin=-1, 
#             vmax=1,
#             annot=True,
#             fmt='.2f',
#             center=0)
# plt.tight_layout()
# plt.show()


# colunas_principais = ['Price', 'ram_gb', 'ssd', 'processor_gnrtn', 'rating']
# colunas_plot = colunas_principais + ['os'] 
# df_plot = df[colunas_principais]

# scatter_matrix(df_plot, 
#                figsize=(15, 15),
#                alpha=0.5, 
#                diagonal='hist',
#                density_kwds={'color': 'blue', 'alpha': 0.5},
#                hist_kwds={'color': 'blue', 'alpha': 0.5},
#                marker='.',
#                s=30)
# plt.suptitle('Dispersion matrix', y=0.98, fontsize=14)
# plt.tight_layout()
# plt.show()


# plt.scatter(df['Price'], df['ram_gb'], color='blue', marker='o')
# plt.title('Price vs ram')
# plt.xlabel('Price')
# plt.ylabel('ram')
# plt.show()


# plt.scatter(df['Price'], df['ssd'], color='blue', marker='o')
# plt.title('Price vs ssd')
# plt.xlabel('Price')
# plt.ylabel('ssd')
# plt.show()


# sns.pairplot(df[colunas_plot], hue='os', diag_kind='hist')
# plt.tight_layout()
# plt.show()


# plt.figure(figsize=(10, 6))
# hb = plt.hexbin(df['Number of Ratings'], df['Price'], gridsize=30, cmap='viridis', mincnt=1)
# plt.colorbar(hb, label='count')
# plt.xlabel('Number of ratings', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.title('Hexbin plot', fontsize=14)
# plt.grid(True, alpha=0.3)
# plt.tight_layout()
# plt.show()


# n_plots = n_colunas * (n_colunas - 1)
# n_rows = int(np.ceil(np.sqrt(n_plots)))
# n_cols = int(np.ceil(n_plots / n_rows))

# fig, axes = plt.subplots(n_rows, n_cols, figsize=(n_cols * 4, n_rows * 4))
# axes = axes.flatten()

# p_index = 0
# for i, var_x in enumerate(colunas):
#     for j, var_y in enumerate(colunas):
#         if i != j:
#             sns.kdeplot(data=df, x=var_x, y=var_y, ax=axes[p_index], 
#                        fill=True, cmap='Blues', alpha=0.6)
#             axes[p_index].set_xlabel(var_x, fontsize=8)
#             axes[p_index].set_ylabel(var_y, fontsize=8)
#             axes[p_index].set_title(f'{var_x} vs {var_y}', fontsize=9)
#             p_index += 1

# for idx in range(p_index, len(axes)):
#     axes[idx].set_visible(False)

# plt.suptitle('Gráficos de Contorno - Densidade de Variáveis', fontsize=14, y=1.02)
# plt.tight_layout()
# plt.show()


# plt.figure(figsize=(14, 8))
# sns.violinplot(data=df, x='brand', y='Price', palette='Set2')
# plt.title('Violin plot', fontsize=14)
# plt.xlabel('Brand', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.grid(True, alpha=0.3, axis='y')
# plt.tight_layout()
# plt.show()

# plt.figure(figsize=(14, 8))
# sns.violinplot(data=df, x='processor_gnrtn', y='Price', palette='Set2')
# plt.title('Violin plot', fontsize=14)
# plt.xlabel('Processor generation', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.grid(True, alpha=0.3, axis='y')
# plt.tight_layout()
# plt.show()

# plt.figure(figsize=(14, 8))
# sns.violinplot(data=df, x='ram_gb', y='Price', palette='Set2')
# plt.title('Violin plot', fontsize=14)
# plt.xlabel('RAM', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.grid(True, alpha=0.3, axis='y')
# plt.tight_layout()
# plt.show()

# plt.figure(figsize=(14, 8))
# sns.violinplot(data=df, x='ssd', y='Price', palette='Set2')
# plt.title('Violin plot', fontsize=14)
# plt.xlabel('SSD', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.grid(True, alpha=0.3, axis='y')
# plt.tight_layout()
# plt.show()

# plt.figure(figsize=(14, 8))
# sns.violinplot(data=df, x='hdd', y='Price', palette='Set2')
# plt.title('Violin plot', fontsize=14)
# plt.xlabel('HDD', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.grid(True, alpha=0.3, axis='y')
# plt.tight_layout()
# plt.show()

plt.figure(figsize=(14, 8))
sns.violinplot(data=df, x='rating', y='Price', palette='Set2')
plt.title('Violin plot', fontsize=14)
plt.xlabel('Rating', fontsize=12)
plt.ylabel('Price', fontsize=12)
plt.xticks(rotation=45, ha='right')
plt.grid(True, alpha=0.3, axis='y')
plt.tight_layout()
plt.show()