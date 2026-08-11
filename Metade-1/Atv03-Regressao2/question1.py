import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.impute import SimpleImputer
from sklearn.model_selection import KFold, cross_val_score
from sklearn.feature_selection import SequentialFeatureSelector
from sklearn.metrics import mean_squared_error, r2_score
from pygam import LinearGAM
import matplotlib.pyplot as plt
import category_encoders as ce

df_train = pd.read_csv('../Atv02-Regressao1/databases/train.csv')
df_test = pd.read_csv('../Atv02-Regressao1/databases/test.csv')
df_sample = pd.read_csv('../Atv02-Regressao1/databases/sample_submission.csv')

df_train_encoded = pd.read_csv('databases/train_processed.csv')
df_test_encoded = pd.read_csv('databases/test_processed.csv')

numeric_cols = df_train.select_dtypes(include=[np.number]).columns.tolist()
numeric_cols = [col for col in numeric_cols if col != 'SalePrice']

k_fold = KFold(n_splits=10, shuffle=True, random_state=42)

#1. Identifique as variáveis categóricas na base de dados e descreva como transformar apropriadamente cada uma delas para a regressão linear múltipla
categoric_cols = df_train.select_dtypes(exclude=[np.number]).columns.tolist()

one_hot_encoding_cols = df_train[categoric_cols].loc[:, df_train[categoric_cols].nunique() <= 5].columns
target_encoding_cols = df_train[categoric_cols].loc[:, df_train[categoric_cols].nunique() > 5].columns

# print(one_hot_encoding_cols.size)
# print(target_encoding_cols.size)

# As variáveis categoricas foram dividas em 2 grupso com base na quantidade de valores únicos, aqueles cocm mais de 5 utilizarão target
# enconding enquanto o resto utilizará one hot encoding, ambas as funções do "category_encoders"

#2. Crie uma nova versão do conjunto de treino com os atributos numéricos originais e com os categóricos convertidos adequadamente para numéricos.

# df_train_processed = df_train[numeric_cols].copy()

# df_onehot = pd.get_dummies(
#     df_train[one_hot_encoding_cols],
#     drop_first=True
# )

# target_encoder = ce.TargetEncoder(cols=target_encoding_cols)

# df_target = target_encoder.fit_transform(
#     df_train[target_encoding_cols],
#     df_train['SalePrice']
# )

# df_train_processed = pd.concat(
#     [df_train_processed, df_onehot, df_target],
#     axis=1
# )

# df_train_processed['SalePrice'] = df_train['SalePrice']

# df_train_processed.to_csv('databases/train_processed.csv', index=False)

# 3. Utilizando as conversões definidas para o conjunto de treino, converta o conjunto de teste da mesma forma.

# df_test_processed = df_test[numeric_cols].copy()

# df_test_onehot = pd.get_dummies(
#     df_test[one_hot_encoding_cols],
#     drop_first=True
# )

# df_test_onehot = df_test_onehot.reindex(
#     columns=df_onehot.columns,
#     fill_value=0
# )

# df_test_target = target_encoder.transform(
#     df_test[target_encoding_cols]
# )

# df_test_processed = pd.concat(
#     [df_test_processed, df_test_onehot, df_test_target],
#     axis=1
# )

# df_test_processed.to_csv('databases/test_processed.csv', index=False)

#4. Realize as previsões para o conjunto de teste

imputer = SimpleImputer(strategy='mean')

df_train_clean = df_train_encoded.dropna()

X_train = df_train_clean.drop(columns=['SalePrice'])
y_train = df_train_clean['SalePrice']
feature_names = X_train.columns

X_train = imputer.fit_transform(X_train)
X_train = pd.DataFrame(X_train, columns=feature_names)

X_test = imputer.transform(df_test_encoded)

# model = LinearRegression()
# model.fit(X_train, y_train)

# predicted_y = model.predict(X_test)

#5. Avalie o RMSE e o R2 do conjunto de treino convertido utilizando 10-fold cross validation

# scores = cross_val_score(model, X_train, y_train, cv=k_fold, scoring='neg_mean_squared_error')
# rmse_scores = np.sqrt(-scores)
# mean_rmse = np.mean(rmse_scores)
# print(f'10-fold cross validation RMSE mean: {mean_rmse}') # o modelo erra aproximadamente 35397.89$ por casa

# scores = cross_val_score(model, X_train, y_train, cv=k_fold, scoring='r2') # o modelo consegue explicar aproximandamente 79% da variabilidade
# mean_r2 = np.mean(scores)  
# print(f'10-fold cross validation R2 mean: {mean_r2}')

#6. Faça o mesmo da questão anterior utilizando regressão passo-a-passo.
#7. Faça o mesmo da questão anterior utilizando regressão com seleção progressiva.

# step_wise_model = LinearRegression()
# sfs = SequentialFeatureSelector(step_wise_model, n_features_to_select='auto', direction='forward', scoring='r2', cv=5)

# sfs.fit(X_train, y_train)

# selected_features = X_train.columns[sfs.get_support()]

# print("Variáveis selecionadas:")
# print(selected_features)
# print(selected_features.size)

# X_train_stepwise = X_train[selected_features]

# scores = cross_val_score(step_wise_model, X_train_stepwise, y_train, cv=k_fold, scoring='neg_mean_squared_error')
# rmse_scores = np.sqrt(-scores)
# mean_rmse = np.mean(rmse_scores)
# print(f'10-fold cross validation RMSE mean: {mean_rmse}') # o modelo erra aproximadamente 31892.92$ por casa

# scores = cross_val_score(step_wise_model, X_train_stepwise, y_train, cv=k_fold, scoring='r2') # o modelo consegue explicar aproximandamente 84% da variabilidade
# mean_r2 = np.mean(scores)  
# print(f'10-fold cross validation R2 mean: {mean_r2}')

#8. Faça o mesmo da questão anterior utilizando regressão com eliminação regressiva.

# step_wise_model = LinearRegression()
# sfs = SequentialFeatureSelector(step_wise_model, n_features_to_select='auto', direction='backward', scoring='r2', cv=5)

# sfs.fit(X_train, y_train)

# selected_features = X_train.columns[sfs.get_support()]

# print("Variáveis selecionadas:")
# print(selected_features)
# print(selected_features.size)

# X_train_stepwise = X_train[selected_features]

# scores = cross_val_score(step_wise_model, X_train_stepwise, y_train, cv=k_fold, scoring='neg_mean_squared_error')
# rmse_scores = np.sqrt(-scores)
# mean_rmse = np.mean(rmse_scores)
# print(f'10-fold cross validation RMSE mean: {mean_rmse}') # o modelo erra aproximadamente 32812.62$ por casa

# scores = cross_val_score(step_wise_model, X_train_stepwise, y_train, cv=k_fold, scoring='r2') # o modelo consegue explicar aproximandamente 83% da variabilidade
# mean_r2 = np.mean(scores)  
# print(f'10-fold cross validation R2 mean: {mean_r2}')

#9. Faça o mesmo da questão anterior utilizando o modelo GAM de regressão nãolinear.

gam = LinearGAM()
gam.fit(X_train, y_train)

predicted_y = gam.predict(X_train)

rmse_scores = []
r2_scores = []

for train_idx, test_idx in k_fold.split(X_train):

    X_tr = X_train.iloc[train_idx]
    X_val = X_train.iloc[test_idx]

    y_tr = y_train.iloc[train_idx]
    y_val = y_train.iloc[test_idx]

    gam = LinearGAM()
    gam.fit(X_tr, y_tr)

    y_pred = gam.predict(X_val)

    rmse = np.sqrt(mean_squared_error(y_val, y_pred))
    r2 = r2_score(y_val, y_pred)

    rmse_scores.append(rmse)
    r2_scores.append(r2)

print(f'10-fold RMSE mean: {np.mean(rmse_scores)}') # o modelo erra aproximadamente 29243.92$ por casa 
print(f'10-fold R² mean: {np.mean(r2_scores)}') # o modelo consegue explicar aproximandamente 87% da variabilidade