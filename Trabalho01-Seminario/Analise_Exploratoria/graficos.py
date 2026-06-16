import pandas as pd
import matplotlib.pyplot as plt
import math as mt
import seaborn as sns
import numpy as np

df = pd.read_csv('../database/laptopPrice_clean.csv')
df_numeric = df.select_dtypes(include=[np.number])

# df["Price"].plot.box()
# plt.ylabel("Value (1.5 IQR Factor)")
# plt.show()

# df["Price"].plot.box(whis=3.0)
# plt.ylabel("Value (3.0 IQR Factor)")
# plt.show()


# plt.figure(figsize=(10, 6))
# sns.histplot(data=df, x='Price', stat='count', bins=30, color='steelblue', alpha=0.7)

# min_val = df['Price'].min()
# max_val = df['Price'].max()
# margin = (max_val - min_val) * 0.05
# plt.xlim(min_val - margin, max_val + margin)

# plt.xlabel('Price', fontsize=12)
# plt.ylabel('Frequency', fontsize=12)
# plt.grid(True, alpha=0.3)
# plt.tight_layout()
# plt.show()


# plt.figure(figsize=(10, 6))
# sns.histplot(data=df, x='Price', stat='count', kde=True, bins=30, color='steelblue', alpha=0.7)

# min_val = df['Price'].min()
# max_val = df['Price'].max()
# margin = (max_val - min_val) * 0.05
# plt.xlim(min_val - margin, max_val + margin)

# plt.xlabel('Price', fontsize=12)
# plt.ylabel('Frequency', fontsize=12)
# plt.grid(True, alpha=0.3)
# plt.tight_layout()
# plt.show()


# colunas_numericas = ['ram_gb', 'ssd', 'hdd']

# fig, axes = plt.subplots(1, 3, figsize=(15, 5))
# axes = axes.flatten()

# for i, var in enumerate(colunas_numericas):
#     if var in df.columns:
#         sns.histplot(data=df, x=var, bins=20, ax=axes[i], color='steelblue', alpha=0.7)
#         axes[i].set_xlabel(var.upper(), fontsize=12)
#         axes[i].set_ylabel('Frequency', fontsize=12)
#         axes[i].set_title(f'{var.upper()} distribution', fontsize=12)
#         axes[i].grid(True, alpha=0.3)
#     else:
#         axes[i].text(0.5, 0.5, f'Coluna {var} não encontrada', ha='center', va='center')
#         axes[i].set_title(f'{var.upper()} - Não disponível')

# plt.tight_layout()
# plt.show()


# colunas = ['processor_brand', 'os', 'weight', 'warranty', 'Touchscreen', 'brand']

# for var in colunas:
#     if var in df.columns:
#         plt.figure(figsize=(8, 8))
#         value_counts = df[var].value_counts()
#         if len(value_counts) > 10:
#             value_counts = value_counts.head(10)
#             value_counts['Others'] = df[var].value_counts().iloc[10:].sum()
        
#         value_counts.plot(kind='pie', autopct='%1.1f%%', startangle=90, 
#                          colors=plt.cm.Set3(range(len(value_counts))))
#         plt.title(f'{var.upper()} distribution', fontsize=14)
#         plt.ylabel('') 
#         plt.tight_layout()
#         plt.show()


# colunas = ['processor_name']

# for var in colunas:
#     if var in df.columns:
#         plt.figure(figsize=(12, 8))
#         value_counts = df[var].value_counts().head(15) 
#         value_counts.plot(kind='barh', color='steelblue', alpha=0.7, edgecolor='black')
        
#         plt.title(f'Top {len(value_counts)} {var.upper()}', fontsize=14)
#         plt.xlabel('Frequency', fontsize=12)
#         plt.ylabel(var.upper(), fontsize=12)
#         plt.grid(True, alpha=0.3, axis='x')
        
#         for i, v in enumerate(value_counts):
#             plt.text(v + max(value_counts)*0.01, i, str(v), va='center', fontsize=9)
        
#         plt.tight_layout()
#         plt.show()


# print(df_numeric_only.mode()) 


# plt.figure(figsize=(12, 6))
# sns.boxplot(data=df, x='brand', y='Price', palette='Set2')
# plt.title('Price vs Brand', fontsize=14)
# plt.xlabel('Brand', fontsize=12)
# plt.ylabel('Price', fontsize=12)
# plt.xticks(rotation=45, ha='right')
# plt.tight_layout()
# plt.show()


plt.figure(figsize=(12, 6))
sns.boxplot(data=df, x='processor_gnrtn', y='Price', palette='Set2')
plt.title('Price vs Processor generation', fontsize=14)
plt.xlabel('Processor generation', fontsize=12)
plt.ylabel('Price', fontsize=12)
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()