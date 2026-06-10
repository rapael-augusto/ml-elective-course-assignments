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


colunas_principais = ['Price', 'ram_gb', 'ssd', 'processor_gnrtn', 'rating']
colunas_plot = colunas_principais + ['os'] 
df_plot = df[colunas_principais]

scatter_matrix(df_plot, 
               figsize=(15, 15),
               alpha=0.5, 
               diagonal='hist',
               density_kwds={'color': 'blue', 'alpha': 0.5},
               hist_kwds={'color': 'blue', 'alpha': 0.5},
               marker='.',
               s=30)
plt.suptitle('Dispersion matrix', y=0.98, fontsize=14)
plt.tight_layout()
plt.show()


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


# fig, axes = plt.subplots(3, 4, figsize=(12, 10))
# axes = axes.flatten()

# p_index = 0
# for i, var_x in enumerate(columns):
#    for j, var_y in enumerate(columns):
#        if i != j:
#            axes[p_index].hexbin(df[var_x], df[var_y], mincnt=1)
#            axes[p_index].set_xlabel(var_x)
#            axes[p_index].set_ylabel(var_y)
#            p_index += 1
            
# plt.suptitle('hexagonal graphs')
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


# for var in df.columns[1:]:
#     print(f"\ncrosstab between {var} and Vehicle_Type:")
#     print(pd.crosstab(df[var], df["Vehicle_Type"], margins=True, margins_name="total"))

# fig, axes = plt.subplots(2, 2, figsize=(25, 18))
# axes = axes.flatten()

# for i, var in enumerate(columns):
#     sns.violinplot(data=df, x='Vehicle_Type', y=var, ax=axes[i])
#     axes[i].set_ylabel('value')
#     axes[i].set_title(var)
#     axes[i].grid(True, axis='y')

# for i in range(len(columns), len(axes)):
#     fig.delaxes(axes[i])

# plt.tight_layout(pad=1)
# plt.show()