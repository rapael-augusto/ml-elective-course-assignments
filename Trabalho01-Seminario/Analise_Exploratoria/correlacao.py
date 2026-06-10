import pandas as pd
import matplotlib.pyplot as plt
import math as mt
import seaborn as sns

df = pd.read_csv('../database/Food_Delivery_Times.csv')
df_idless = df.drop(columns=['Order_ID'])
df_numeric_only = df_idless.drop(columns=['Weather', 'Traffic_Level', 'Time_of_Day', 'Vehicle_Type'])
df_clean = df_numeric_only.dropna()

columns = df_numeric_only.columns
columns_categoric = ['Weather', 'Traffic_Level', 'Time_of_Day', 'Vehicle_Type']

# print(df.corr(numeric_only=True))


sns.heatmap(df_idless.corr(numeric_only=True), 
            cmap='coolwarm', 
            vmin=-1, 
            vmax=1,
            annot=True,
            fmt='.2f',
            center=0)
plt.tight_layout()
plt.show()


# pd.plotting.scatter_matrix(df_idless, figsize=(12, 12))
# plt.suptitle('dispersion matrix diagram')
# plt.tight_layout()
# plt.show()

# plt.scatter(df_clean['Distance_km'], df_clean['Delivery_Time_min'], color='blue', marker='o')
# plt.title('Distance vs Delivery Time')
# plt.xlabel('Distance (Km)')
# plt.ylabel('Delivery Time (Min)')
# plt.show()

# sns.pairplot(df_idless, hue='Vehicle_Type', diag_kind='hist')
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


# fig, axes = plt.subplots(3, 4, figsize=(12, 10))
# axes = axes.flatten()

# p_index = 0
# for i, var_x in enumerate(columns):
#    for j, var_y in enumerate(columns):
#        if i != j:
#            sns.kdeplot(data=df, x=var_x, y=var_y, ax=axes[p_index], fill=False)
#            axes[p_index].set_xlabel(var_x)
#            axes[p_index].set_ylabel(var_y)
#            axes[p_index].set_title(f'{var_x} vs {var_y}')
#            p_index += 1

# plt.suptitle('contour graph')
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