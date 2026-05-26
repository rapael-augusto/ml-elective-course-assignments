import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

columns = ["sepal-length", "sepal-width", "petal-length", "petal-width", "class"]
df = pd.read_csv("../databases/iris/iris.data", names=columns)
df_no_class = df.drop(columns=["class"])

# A) matriz de correlação
#print(df.corr(numeric_only=True))

# B) gráfico da matriz de correlação
#sns.heatmap(df.corr(numeric_only=True))
#plt.show()

# C) diagrama de dispersão
#pd.plotting.scatter_matrix(df, figsize=(12, 12))
#plt.suptitle('Dispersion matrix')
#plt.show()

# D) diagrama de dispersão, destacando cada classe
#sns.pairplot(df, hue='class', diag_kind='hist')
#plt.suptitle('Dispersion matrix')
#plt.show()