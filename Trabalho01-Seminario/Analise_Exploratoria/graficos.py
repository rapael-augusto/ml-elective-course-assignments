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


# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns):
#     df_clean[var].plot.box(ax=axes[i])

# plt.show()


# for var in columns:
#     print(pd.crosstab(pd.cut(df[var], bins=3), df['Vehicle_Type']))


# for var in columns:
#    print(pd.crosstab(pd.cut(df[var], bins=5), df['Vehicle_Type']))


# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns):
#     sns.histplot(data=df, x=var, stat='density', ax=axes[i])
#     axes[i].set_xlim(mt.floor(df[var].min()), mt.ceil(df[var].max()))
#     axes[i].set_xlabel(var)
#     axes[i].set_ylabel('frequency')

# plt.show()


# fig, axes = plt.subplots(2, 2, figsize=(10, 8))
# axes = axes.flatten()

# for i, var in enumerate(columns):
#     sns.histplot(data=df, x=var, kde=True, stat='density', ax=axes[i])
#     axes[i].set_xlim(mt.floor(df[var].min()), mt.ceil(df[var].max()))
#     axes[i].set_xlabel(var)
#     axes[i].set_ylabel('density')

# plt.show()


# fig, axes = plt.subplots(2, 2, figsize=(15, 10))
# axes = axes.flatten()

# for i, var in enumerate(columns_categoric):
#    df[var].value_counts().plot(kind='bar', ax=axes[i], color='blue')
#    axes[i].set_xlabel(var)
#    axes[i].set_ylabel('frequency')
   
# plt.tight_layout(pad=3)
# plt.show()


# fig, axes = plt.subplots(2, 2, figsize=(15, 10))
# axes = axes.flatten()

# for i, var in enumerate(columns_categoric):
#    df[var].value_counts().plot(kind="pie", ax=axes[i], autopct='%1.1f%%')
#    axes[i].set_xlabel(var)

# plt.tight_layout()
# plt.show()


# print(df_numeric_only.mode()) 


# count = df['Weather'].value_counts()
# plt.figure(figsize=(6, 4))
# plt.bar(count.index, count.values)
# plt.ylim(120, 450)
# plt.title('wheater distribution')
# plt.ylabel('frequency')
# plt.show()