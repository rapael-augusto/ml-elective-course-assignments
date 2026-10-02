import pandas as pd

df = pd.read_csv("pe_saeb_2019.csv", sep=";")
print(df.shape)

drop_cols = []
for col in df.columns:
    if "_CH" in col or "_CN" in col:
        drop_cols.append(col)

drop_cols.extend(["IN_AMOSTRA", "ESTRATO", "ESTRATO_CIENCIAS"])
df = df.drop(columns=drop_cols)
print(df.columns)
print(df.shape)