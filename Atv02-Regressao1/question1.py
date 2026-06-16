import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt

df_train = pd.read_csv('databases/train.csv')
df_test = pd.read_csv('databases/test.csv')
df_sample = pd.read_csv('databases/sample_submission.csv')

df_clean = df_train[['GrLivArea', 'SalePrice']].dropna()
model = LinearRegression()
model.fit(df_clean[['GrLivArea']], df_clean['SalePrice'])

predicted_y = model.predict(df_clean[['GrLivArea']])
residuals = df_clean['SalePrice'] - predicted_y

# A) Qual o intercepto?
# print(f"Intercepto entre (GrLivArea) e (SalePrice): {model.intercept_}")

# B) Qual o coeficiente relacionado à variável independente?
# print(f"Coeficiente entre (GrLivArea) e (SalePrice): {model.coef_}")

# C) O quanto uma unidade de GrLivArea influencia no SalePrice?
# print(f"O mesmo valor do coeficiente, 1 GrLivArea equivale a {model.coef_} SalePrice")

# D) Mostre o diagrama de dispersão dos dados / E) Coloque a reta de regressão no diagrama de dispersão / F) Faça a previsão para os dados de treino
# plt.scatter(df_clean['GrLivArea'], df_clean['SalePrice'])
# plt.plot(df_clean['GrLivArea'], predicted_y, color='red', linewidth=2, label='regression line')
# plt.xlabel('GrLivArea')
# plt.ylabel('SalePrice')
# plt.show()

# G) Calcule os resíduos para o conjunto de treino
# print(residuals)

# H) Faça um histograma dos resíduos
# plt.hist(residuals, bins=10, color='skyblue', edgecolor='black')
# plt.xlabel('residues')
# plt.ylabel('frequency')
# plt.tight_layout()
# plt.show()

# H) Faça a previsão para o conjunto de teste
# test_predicted_y = model.predict(df_test[['GrLivArea']].dropna())
# print(test_predicted_y)