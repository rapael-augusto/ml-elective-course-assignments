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

# Modelos, com remoção de alguns outliers:

df_train = pd.read_csv('../database/laptopPrice_train.csv')
df_train = df_train.drop(columns=['Number of Reviews'])
df_test = pd.read_csv('../database/laptopPrice_test.csv')
df_test = df_test.drop(columns=['Number of Reviews'])

q_low = df_train['Price'].quantile(0.01)
q_high = df_train['Price'].quantile(0.99)

df_train = df_train[(df_train['Price'] >= q_low) & (df_train['Price'] <= q_high)]
df_test = df_test[(df_test['Price'] >= q_low) & (df_test['Price'] <= q_high)]
feature_names = df_train.drop(columns=['Price']).columns.to_list()

imputer = SimpleImputer(strategy='most_frequent')

X_train = imputer.fit_transform(df_train.drop(columns=['Price']))
X_train = pd.DataFrame(X_train, columns=feature_names)
y_train = df_train['Price']

X_test = imputer.transform(df_test.drop(columns=['Price']))
X_test = pd.DataFrame(X_test, columns=feature_names)
y_test = df_test['Price']

corr_matrix = X_train.corr().abs()
upper = corr_matrix.where(np.triu(np.ones(corr_matrix.shape), k=1).astype(bool))
to_drop = [column for column in upper.columns if any(upper[column] > 0.9)]
X_train_filtered = X_train.drop(columns=to_drop)

model = LinearRegression()
model.fit(X_train, y_train)

# print("Variáveis removidas:")
# print(to_drop)
# coef_before = pd.DataFrame({'Variável': X_train.columns, 'Coeficiente': model.coef_})
# print(coef_before.sort_values(by='Coeficiente', key=abs, ascending=False))
# print("\nIntercepto:", model.intercept_)

# model.fit(X_train_filtered, y_train)
# coef_after = pd.DataFrame({'Variável': X_train_filtered.columns, 'Coeficiente': model.coef_})
# print(coef_after.sort_values(by='Coeficiente', key=abs, ascending=False))
# print("Intercepto:", model.intercept_)


# X1 = X_train.drop(columns=['ssd'])

# model1 = LinearRegression()
# model1.fit(X1, y_train)

# print("Intercepto:", model1.intercept_)


# X2 = X_train.copy()

# model2 = LinearRegression()
# model2.fit(X2, y_train)

# print("Coeficiente ssd:", model2.coef_[list(X_train.columns).index('ssd')])
# print("Intercepto:", model2.intercept_)


# coef_sem = model1.coef_[list(X1.columns).index('ram_gb')]
# coef_com = model2.coef_[list(X2.columns).index('ram_gb')]

# print("Coeficiente ram_gb (sem ssd):", coef_sem)
# print("Coeficiente ram_gb (com ssd):", coef_com)

# print(f"Mudança percentual: {(abs(coef_sem - coef_com) / abs(coef_sem) * 100):.2f}%")


# X1 = X_train[['ram_gb', 'ssd']]

# model1 = LinearRegression()
# model1.fit(X1, y_train)

# print("Coeficiente ram_gb:", model1.coef_[0])
# print("Coeficiente ssd:", model1.coef_[1])
# print("Intercepto:", model1.intercept_)


# X2 = X_train[['ram_gb', 'ssd']].copy()
# X2['ram_gb_ssd'] = X2['ram_gb'] * X2['ssd']

# model2 = LinearRegression()
# model2.fit(X2, y_train)

# print("Coeficiente ram_gb:", model2.coef_[0])
# print("Coeficiente ssd:", model2.coef_[1])
# print("Coeficiente ram_gb_ssd:", model2.coef_[2])
# print("Intercepto:", model2.intercept_)


# coef_sem = model1.coef_[0]
# coef_com = model2.coef_[0]

# print(f"Mudança percentual: {(abs(coef_sem - coef_com) / abs(coef_sem) * 100):.2f}%")


X_cook = X_train.reset_index(drop=True)
y_cook = y_train.reset_index(drop=True)

X_cook_sm = sm.add_constant(X_cook)
model_cook = sm.OLS(y_cook, X_cook_sm).fit()
influence = model_cook.get_influence()
cooks_d = influence.cooks_distance[0]
hat_matrix_diag = influence.hat_matrix_diag

threshold_cook = 4 / len(X_cook)
influential_points = np.where(cooks_d > threshold_cook)[0]
threshold_hat = 2 * (X_cook.shape[1] + 1) / len(X_cook)

plt.figure(figsize=(10, 5))
plt.stem(range(len(hat_matrix_diag)), hat_matrix_diag)
plt.axhline(threshold_hat, color='red', linestyle='--', label=f'2(p+1)/n = {threshold_hat:.4f}')
plt.xlabel("Observação")
plt.ylabel("Leverage")
plt.legend()

plt.show()

X_no_outliers = X_cook.drop(index=influential_points)
y_no_outliers = y_cook.drop(index=influential_points)

model_clean = LinearRegression()
model_clean.fit(X_no_outliers, y_no_outliers)

coef_compare = pd.DataFrame({'Variável': X_cook.columns, 'Coef_Original': model.coef_, 'Coef_Sem_Influentes': model_clean.coef_})
coef_compare['Diferença'] = (coef_compare['Coef_Sem_Influentes'] - coef_compare['Coef_Original'])
coef_compare['Diferença_%'] = (abs(coef_compare['Diferença']) / abs(coef_compare['Coef_Original']) * 100)

print(coef_compare.sort_values(by='Diferença_%', ascending=False).head(20))

predicted_y = model_clean.predict(X_no_outliers)
residue = np.abs(y_no_outliers - predicted_y)

sns.regplot(x=predicted_y, y=residue, scatter_kws={'alpha': 0.5}, line_kws={'color': 'C1'})
plt.xlabel('Predição')
plt.ylabel('Resíduo Absoluto')

plt.show()

print("RMSE (sklearn-linear_regression):", np.sqrt(mean_squared_error(y_no_outliers, predicted_y)))
print("R² (sklearn-linear_regression):", r2_score(y_no_outliers, predicted_y))

bp_test = het_breuschpagan(residue, sm.add_constant(X_no_outliers))

print("LM Statistic:", bp_test[0])
print("p-value:", bp_test[1])