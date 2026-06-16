import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.metrics import root_mean_squared_error
from sklearn.metrics import r2_score
from sklearn.model_selection import KFold, cross_val_score
import matplotlib.pyplot as plt

df_train = pd.read_csv('databases/train.csv')
df_test = pd.read_csv('databases/test.csv')
df_sample = pd.read_csv('databases/sample_submission.csv')

df_clean = df_train.dropna()
x = df_train.select_dtypes(include=['int64', 'float64']).drop(columns=['SalePrice', 'Id'], errors='ignore')
y = df_train['SalePrice']

full_data = pd.concat([x, y], axis=1).dropna()
X_clean = full_data.drop(columns=['SalePrice'])
y_clean = full_data['SalePrice']

model = LinearRegression()
model.fit(X_clean, y_clean)

predicted_y = model.predict(X_clean)

# predicted_y = model.predict(df_clean[['GrLivArea']])
# residuals = df_clean['SalePrice'] - predicted_y

# A) Para cada variável independente, o quanto uma unidade da variável influencia no SalePrice?
# print("variáveis e seus respectivos coeficientes:")
# for name, coef in zip(X_clean.columns, model.coef_):
#     print(f"1 {name} equivale a {coef} SalePrice")

# B) Se todas as variáveis independentes assumisse valor zero, qual seria o SalePrice?
# print(f'o valor do intercepto: {model.intercept_}')

# C) Qual o RMSE para o conjunto de treino?
# rmse = root_mean_squared_error(predicted_y, y_clean)
# print(rmse)

# D) Qual o R2 para o conjunto de treino?
# r2 = r2_score(predicted_y, y_clean)
# print(f'squared error: {r2}')

# E) Utilizando 10-fold cross valitation, qual a média do RMSE para o conjunto de treino?
# k_fold = KFold(n_splits=10, shuffle=True, random_state=42)
# scores = cross_val_score(model, X_clean, y_clean, cv=k_fold, scoring='neg_mean_squared_error')
# rmse_scores = np.sqrt(-scores)
# mean_rmse = np.mean(rmse_scores)
# print(f'10-fold cross validation RMSE mean: {mean_rmse}')

# F) Utilizando 10-fold cross valitation, qual a média do R2 para o conjunto de treino?
# k_fold = KFold(n_splits=10, shuffle=True, random_state=42)
# scores = cross_val_score(model, X_clean, y_clean, cv=k_fold, scoring='r2')
# mean_r2 = np.mean(scores)  
# print(mean_r2)