import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import statsmodels.api as sm
from sklearn.linear_model import LinearRegression
from pygam import LinearGAM
from sklearn.impute import SimpleImputer
from sklearn.feature_selection import SequentialFeatureSelector
from sklearn.metrics import mean_squared_error, r2_score
from statsmodels.stats.diagnostic import het_breuschpagan

df_train = pd.read_csv('../database/laptopPrice_train.csv')
df_test = pd.read_csv('../database/laptopPrice_test.csv')

# imputer = SimpleImputer(strategy='most_frequent')
# feature_names = df_train.drop(columns=['Price']).columns.to_list()

# X_train = imputer.fit_transform(df_train.drop(columns=['Price']))
# X_train = pd.DataFrame(X_train, columns=feature_names)
# y_train = df_train['Price']

# X_test = imputer.transform(df_test.drop(columns=['Price']))
# X_test = pd.DataFrame(X_test, columns=feature_names)
# y_test = df_test['Price']

feature_names = df_train.drop(columns=['Price']).columns.to_list()

df_train = df_train.dropna()
df_test = df_test.dropna()

X_train = df_train.drop(columns=['Price'])
X_train = pd.DataFrame(X_train, columns=feature_names)
y_train = df_train['Price']

X_test = df_test.drop(columns=['Price'])
X_test = pd.DataFrame(X_test, columns=feature_names)
y_test = df_test['Price']

# Regressão normal

# model = LinearRegression()
# model.fit(X_train, y_train)

# print(pd.DataFrame({'Variável': X_train.columns, 'Coeficiente': model.coef_}))
# print('Intercepto: ', model.intercept_)

# predicted_y = model.predict(X_test)

# print("RMSE (sklearn-linear_regression):", np.sqrt(mean_squared_error(y_test, predicted_y)))
# print("R² (sklearn-linear_regression):", r2_score(y_test, predicted_y))

# residue = y_test - predicted_y

# sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.25}, line_kws={'color': 'C1'})
# plt.axhline(0, color='red', linestyle='--')
# for x, y in zip(predicted_y, residue):
#     plt.plot([x, x], [0, y], color='gray', alpha=0.2)
# plt.xlabel('Predição')
# plt.ylabel('Resíduo Absoluto')

# plt.show()

# bp_test = het_breuschpagan(residue, sm.add_constant(X_test))

# print("LM Statistic:", bp_test[0])
# print("p-value:", bp_test[1])


# Regressão passo-a-passo com seleção progressiva:

# step_wise_model = LinearRegression()
# sfs = SequentialFeatureSelector(step_wise_model, n_features_to_select='auto', direction='forward', scoring='r2', cv=5)

# sfs.fit(X_train, y_train)

# selected_features = X_train.columns[sfs.get_support()]

# step_wise_model.fit(X_train[selected_features], y_train)

# print(pd.DataFrame({'Variável': selected_features, 'Coeficiente': step_wise_model.coef_}))
# print('Intercepto: ', step_wise_model.intercept_)

# predicted_y = step_wise_model.predict(X_test[selected_features])

# print("RMSE (sklearn-linear_regression):", np.sqrt(mean_squared_error(y_test, predicted_y)))
# print("R² (sklearn-linear_regression):", r2_score(y_test, predicted_y))

# residue = y_test - predicted_y

# sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.25}, line_kws={'color': 'C1'})
# plt.axhline(0, color='red', linestyle='--')
# for x, y in zip(predicted_y, residue):
#     plt.plot([x, x], [0, y], color='gray', alpha=0.2)
# plt.xlabel('Predição')
# plt.ylabel('Resíduo Absoluto')

# plt.show()

# bp_test = het_breuschpagan(residue, sm.add_constant(X_test[selected_features]))

# print("LM Statistic:", bp_test[0])
# print("p-value:", bp_test[1])


# Regressão passo-a-passo com eliminação regressiva:

# step_wise_model = LinearRegression()
# sfs = SequentialFeatureSelector(step_wise_model, n_features_to_select='auto', direction='backward', scoring='r2', cv=5)

# sfs.fit(X_train, y_train)

# selected_features = X_train.columns[sfs.get_support()]

# step_wise_model.fit(X_train[selected_features], y_train)

# print(pd.DataFrame({'Variável': selected_features, 'Coeficiente': step_wise_model.coef_}))
# print('Intercepto: ', step_wise_model.intercept_)

# predicted_y = step_wise_model.predict(X_test[selected_features])

# print("RMSE (sklearn-linear_regression):", np.sqrt(mean_squared_error(y_test, predicted_y)))
# print("R² (sklearn-linear_regression):", r2_score(y_test, predicted_y))

# residue = y_test - predicted_y

# sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.25}, line_kws={'color': 'C1'})
# plt.axhline(0, color='red', linestyle='--')
# for x, y in zip(predicted_y, residue):
#     plt.plot([x, x], [0, y], color='gray', alpha=0.2)
# plt.xlabel('Predição')
# plt.ylabel('Resíduo Absoluto')

# plt.show()

# bp_test = het_breuschpagan(residue, sm.add_constant(X_test[selected_features]))

# print("LM Statistic:", bp_test[0])
# print("p-value:", bp_test[1])


# Regressão não-linear modelo GAM:

# gam = LinearGAM()
# gam.fit(X_train, y_train)

# for i, col in enumerate(X_train.columns):
#     print(col, gam.coef_[i])

# predicted_y = gam.predict(X_test)

# print("RMSE (sklearn-linear_regression):", np.sqrt(mean_squared_error(y_test, predicted_y)))
# print("R² (sklearn-linear_regression):", r2_score(y_test, predicted_y))

# residue = y_test - predicted_y

# sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.25}, line_kws={'color': 'C1'})
# plt.axhline(0, color='red', linestyle='--')

# for x, y in zip(predicted_y, residue):
#     plt.plot([x, x], [0, y], color='gray', alpha=0.2)

# plt.xlabel('Predição')
# plt.ylabel('Resíduo Absoluto')
# plt.show()

# bp_test = het_breuschpagan(residue, sm.add_constant(X_test))

# print("LM Statistic:", bp_test[0])
# print("p-value:", bp_test[1])