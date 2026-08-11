import pandas as pd

df = pd.read_csv("DADOS/TS_ALUNO_9EF.csv", sep=";", dtype={
        "TX_RESP_BLOCO1_CH": str,
        "TX_RESP_BLOCO2_CH": str,
        "TX_RESP_BLOCO3_CH": str,
        "TX_RESP_BLOCO1_CN": str,
        "TX_RESP_BLOCO2_CN": str,
        "TX_RESP_BLOCO3_CN": str,
    })
print(df.shape)

pe_df = df[df["ID_UF"] == 26]
print(pe_df.shape)
pe_df.to_csv('pe_saeb_2019.csv', index=False, encoding='utf-8-sig', header=True, sep=";")

# df = pd.read_csv("pe_saeb_2019.csv", sep=";")
# print(df.shape)