import pandas as pd

df = pd.read_csv('pe_saeb_2019.csv', sep=';')

print(df.shape[0])
# with pd.option_context('display.max_rows', None):
#     print(df.isna().sum())
# print(df['IN_PREENCHIMENTO_CH'].value_counts())
# print(df['IN_PRESENCA_CH'].value_counts())
# print(df['PROFICIENCIA_CH'].isna().sum())
# print(df['IN_PRESENCA_LP'].value_counts())
# print(df['IN_PREENCHIMENTO_LP'].value_counts())
# print(int(df.shape[0]) - int(df['PROFICIENCIA_LP'].isna().sum()))
# print(int(df.shape[0]) - int(df['PROFICIENCIA_MT'].isna().sum()))
# print(int(df.shape[0]) - int(df['PROFICIENCIA_CH'].isna().sum()))
# print(int(df.shape[0]) - int(df['PROFICIENCIA_CN'].isna().sum()))
# print(df["TX_RESP_Q001"].value_counts(dropna=False))

# cols = [
#     "IN_PREENCHIMENTO_LP",
#     "IN_PREENCHIMENTO_MT",
#     "IN_PREENCHIMENTO_CH",
#     "IN_PREENCHIMENTO_CN",
#     "IN_PRESENCA_LP",
#     "IN_PRESENCA_MT",
#     "IN_PRESENCA_CH",
#     "IN_PRESENCA_CN",
#     "IN_PROFICIENCIA_LP",
#     "IN_PROFICIENCIA_MT",
#     "IN_PROFICIENCIA_CH",
#     "IN_PROFICIENCIA_CN",
#     "IN_AMOSTRA"
# ]

# for col in cols:
#     print(f"\n{col}")
#     print(df[col].value_counts(dropna=False))

# df = df.drop(columns=['TX_RESP_BLOCO1_LP', 'TX_RESP_BLOCO2_LP',
#                             'TX_RESP_BLOCO1_MT', 'TX_RESP_BLOCO2_MT', 'TX_RESP_BLOCO1_CH', 'TX_RESP_BLOCO2_CH',
#                             'TX_RESP_BLOCO3_CH', 'TX_RESP_BLOCO1_CN', 'TX_RESP_BLOCO2_CN', 'TX_RESP_BLOCO3_CN'])

# string_columns = df.select_dtypes(include=['object', 'string']).columns.tolist()
# print(string_columns)

print(df['PROFICIENCIA_LP'].max())
print(df['PROFICIENCIA_LP'].min())
print(df['PROFICIENCIA_LP_SAEB'].max())
print(df['PROFICIENCIA_LP_SAEB'].min())

# cols = ['TX_RESP_Q001', 'TX_RESP_Q002', 'TX_RESP_Q003A', 'TX_RESP_Q003B', 'TX_RESP_Q003C', 'TX_RESP_Q003D', 'TX_RESP_Q003E', 'TX_RESP_Q004', 'TX_RESP_Q005', 'TX_RESP_Q006A', 'TX_RESP_Q006B', 'TX_RESP_Q006C', 'TX_RESP_Q006D', 'TX_RESP_Q006E', 'TX_RESP_Q007', 'TX_RESP_Q008A', 'TX_RESP_Q008B', 'TX_RESP_Q008C', 'TX_RESP_Q009A', 'TX_RESP_Q009B', 'TX_RESP_Q009C', 'TX_RESP_Q009D', 'TX_RESP_Q009E', 'TX_RESP_Q009F', 'TX_RESP_Q009G', 'TX_RESP_Q010A', 'TX_RESP_Q010B', 'TX_RESP_Q010C', 'TX_RESP_Q010D', 'TX_RESP_Q010E', 'TX_RESP_Q010F', 'TX_RESP_Q010G', 'TX_RESP_Q010H', 'TX_RESP_Q010I', 'TX_RESP_Q011','TX_RESP_Q012', 'TX_RESP_Q013', 'TX_RESP_Q014', 'TX_RESP_Q015', 'TX_RESP_Q016', 'TX_RESP_Q017A', 'TX_RESP_Q017B', 'TX_RESP_Q017C', 'TX_RESP_Q017D', 'TX_RESP_Q017E', 'TX_RESP_Q018A', 'TX_RESP_Q018B', 'TX_RESP_Q018C', 'TX_RESP_Q019']

# for col in cols:
#     print(f"\n{col}")
#     print(df[col].value_counts(dropna=False))