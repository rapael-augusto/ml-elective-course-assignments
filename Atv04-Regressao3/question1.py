import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.impute import SimpleImputer
import statsmodels.api as sm
from statsmodels.stats.diagnostic import het_breuschpagan
import matplotlib.pyplot as plt
import seaborn as sns

df_train = pd.read_csv('../Atv02-Regressao1/databases/train.csv')
df_test = pd.read_csv('../Atv02-Regressao1/databases/test.csv')
df_sample = pd.read_csv('../Atv02-Regressao1/databases/sample_submission.csv')

df_train_encoded = pd.read_csv('../Atv03-Regressao2/databases/train_processed.csv')
df_test_encoded = pd.read_csv('../Atv03-Regressao2/databases/test_processed.csv')

imputer = SimpleImputer(strategy='mean')

df_train_clean = df_train_encoded.dropna()

X_train = df_train_clean.drop(columns=['SalePrice'])
y_train = df_train_clean['SalePrice']
feature_names = X_train.columns

X_train = imputer.fit_transform(X_train)
X_train = pd.DataFrame(X_train, columns=feature_names)
X_test = imputer.transform(df_test_encoded)
X_test = pd.DataFrame(X_test, columns=feature_names)

X_train = X_train.reset_index(drop=True)
y_train = y_train.reset_index(drop=True)

model = LinearRegression()
model.fit(X_train, y_train)

predicted_y = model.predict(X_train)
residue = np.abs(y_train - predicted_y)

#1. Identique e elimine preditoras correlacionadas. Mostre os coecientes antes e depois da eliminação. Antes da eliminação não precisa utilizar todas as variáveis da base de dados.
# corr_matrix = X_train.corr().abs()
# upper = corr_matrix.where(
#     np.triu(np.ones(corr_matrix.shape), k=1).astype(bool)
# )
# to_drop = [column for column in upper.columns if any(upper[column] > 0.9)]
# X_train_filtered = X_train.drop(columns=to_drop)

# print("Variáveis removidas:")
# print(to_drop)
# print("////////")
# print("Coeficientes antes da remoção: ", model.coef_, model.intercept_)
# coef_before = pd.DataFrame({'Variável': X_train.columns, 'Coeficiente': model.coef_})
# print(coef_before.sort_values(by='Coeficiente', key=abs, ascending=False))
# print("\nIntercepto:", model.intercept_)

# model.fit(X_train_filtered, y_train)
# coef_after = pd.DataFrame({'Variável': X_train_filtered.columns, 'Coeficiente': model.coef_})
# print(coef_after.sort_values(by='Coeficiente', key=abs, ascending=False))
# print("Intercepto:", model.intercept_)

#2. Encontre uma variável de confundimento e demonstre através dos coecientes os efeitos de utilizar ou não esta variável na regressão.
# Foi escolhida a variável 'GrLivArea' e 'OverallQual' para o teste, no final, existiu uma redução de aproximadamente 50% do valor do 
# coeficiente de 'GrLivArea' ao adicionar a variável 'OverallQual'.

# X1 = X_train[['GrLivArea']]

# model1 = LinearRegression()
# model1.fit(X1, y_train)

# print("Coeficiente GrLivArea:", model1.coef_[0])
# print("Intercepto:", model1.intercept_)

# X2 = X_train[['GrLivArea', 'OverallQual']]

# model2 = LinearRegression()
# model2.fit(X2, y_train)

# print("Coeficiente GrLivArea:", model2.coef_[0])
# print("Coeficiente OverallQual:", model2.coef_[1])
# print("Intercepto:", model2.intercept_)

# coef_sem = model1.coef_[0]
# coef_com = model2.coef_[0]
# print(f"Mudança percentual: {(abs(coef_sem - coef_com) / abs(coef_sem) * 100):.2f}%")

#3. Encontre um par de variáveis que apresentam interações. Mostre os coecientes do modelo treinado com interações.
# Serão utilizadas 'GrLivArea' e 'OverallQual';
# X_inter = X_train[['GrLivArea', 'OverallQual']].copy()
# X_inter['GrLivArea_OverallQual'] = (X_inter['GrLivArea'] * X_inter['OverallQual'])

# model_inter = LinearRegression()
# model_inter.fit(X_inter, y_train)

# coef_df = pd.DataFrame({'Variável': X_inter.columns, 'Coeficiente': model_inter.coef_})

# print(coef_df) # Uma casa com x 'OverallQual' ganha aproximadamente 11xn de preço a cada n 'GrLivArea', ou seja, quanto mais qualidade e mais
#                # área, bem mais caro será
# print("Intercepto:", model_inter.intercept_)

#4. Mostre os coecientes do modelo treinado antes e depois da remoção de valores inuentes.

# X_cook = sm.add_constant(X_train)
# model_cook = sm.OLS(y_train, X_cook).fit()

# influence = model_cook.get_influence()
# cooks_d = influence.cooks_distance[0]
# print(cooks_d)

# threshold = 4 / len(X_train)

# influential_points = np.where(cooks_d > threshold)[0]

# hat_matrix_diag = influence.hat_matrix_diag

# # plt.figure(figsize=(10,5))

# # plt.stem(
# #     range(len(hat_matrix_diag)),
# #     hat_matrix_diag
# # )

# # threshold = 2 * (X_train.shape[1] + 1) / len(X_train)

# # plt.axhline(
# #     threshold,
# #     color='red',
# #     linestyle='--',
# #     label=f'2(p+1)/n = {threshold:.4f}'
# # )

# # plt.xlabel("Observação")
# # plt.ylabel("Leverage")
# # plt.legend()

# # plt.show()

# X_no_outliers = X_train.drop(index=influential_points)
# y_no_outliers = y_train.drop(index=influential_points)

# model_clean = LinearRegression()
# model_clean.fit(X_no_outliers, y_no_outliers)

# coef_compare = pd.DataFrame({'Variável': X_train.columns, 'Coef_Original': model.coef_, 'Coef_Sem_Influentes': model_clean.coef_})

# coef_compare['Diferença'] = (coef_compare['Coef_Sem_Influentes'] - coef_compare['Coef_Original'])
# coef_compare['Diferença_%'] = (abs(coef_compare['Diferença']) / abs(coef_compare['Coef_Original']) * 100)
# print(coef_compare.sort_values(by='Diferença_%', ascending=False).head(20))

#5. Mostre se existe ou não heterocedasticidade no seu modelo de regressão linear multivariado.
# Pelo gráfico e teste de Breusch-Pagan, não existe heterocedasticidade nesse modelo
# sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.5}, line_kws={'color': 'C1'})
# plt.xlabel('Predição')
# plt.ylabel('Resíduo Absoluto')

# plt.show()

bp_test = het_breuschpagan(residue, sm.add_constant(X_train))

print("LM Statistic:", bp_test[0])
print("p-value:", bp_test[1])

#6. Interprete os gráficos residuais parciais no seu modelo de regressão linear multivariado.
# os gráficos sugerem uma relação aproximadamente linear, com pouca curvatura evidente
# X_ccpr = sm.add_constant(X_train)
# results = sm.OLS(y_train, X_ccpr).fit()

# for var in ['GrLivArea', 'OverallQual', 'GarageCars']:
#     sm.graphics.plot_ccpr(results, var)
#     plt.show()