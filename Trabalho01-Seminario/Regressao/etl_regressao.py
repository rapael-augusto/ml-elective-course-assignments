import pandas as pd
import numpy as np
import category_encoders as ce
from sklearn.model_selection import train_test_split

df = pd.read_csv('../database/laptopPrice_clean.csv')

numeric_cols = df.select_dtypes(include=[np.number]).columns.tolist()
categoric_cols = df.select_dtypes(exclude=[np.number]).columns.tolist()

one_hot_encoding_cols = df[categoric_cols].loc[:, df[categoric_cols].nunique() <= 5].columns.to_list()
target_encoding_cols = df[categoric_cols].loc[:, df[categoric_cols].nunique() > 5].columns.to_list()

df_train, df_test = train_test_split(df, test_size=0.2, random_state=42)

df_train_onehot = pd.get_dummies(df_train[one_hot_encoding_cols], drop_first=True)
df_test_onehot = pd.get_dummies(df_test[one_hot_encoding_cols], drop_first=True)

df_test_onehot = df_test_onehot.reindex(columns=df_train_onehot.columns, fill_value=0)

target_encoder = ce.TargetEncoder(cols=target_encoding_cols)

df_train_target = target_encoder.fit_transform(df_train[target_encoding_cols], df_train['Price'])

df_test_target = target_encoder.transform(df_test[target_encoding_cols])

df_train_processed = pd.concat([df_train[numeric_cols], df_train_onehot, df_train_target], axis=1)

df_test_processed = pd.concat([df_test[numeric_cols], df_test_onehot, df_test_target], axis=1)

df_train_processed['Price'] = df_train['Price']
df_test_processed['Price'] = df_test['Price']

df_processed = pd.concat([df_train_processed, df_test_processed], axis=0)

df_processed.to_csv('../database/laptopPrice_processed.csv', index=False)

df_train_processed.to_csv('../database/laptopPrice_train.csv', index=False)
df_test_processed.to_csv('../database/laptopPrice_test.csv', index=False)