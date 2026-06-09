import pandas as pd
from scipy import stats

# Reading the data (Why this thing is ".data" instead of ".csv"?)
columns = ["sepal-length", "sepal-width", "petal-length", "petal-width", "class"]
df = pd.read_csv("../databases/iris/iris.data", names=columns)

flower_class = {
    'setosa': df[df['class'] == 'Iris-setosa'].copy(),
    'versicolor': df[df['class'] == 'Iris-versicolor'].copy(),
    'virginica': df[df['class'] == 'Iris-virginica'].copy()
}

for class_name, data in flower_class.items():
    print(f"\n\nFlower group selected: {class_name}")

    no_class_data = data.drop(columns=["class"])

    # A) representação tabular:
    # print(data.sample(n=2))

    # B) média
    # print(data.mean(numeric_only=True))

    # C) mediana
    # print(data.median(numeric_only=True))

    # D): média aparada (Pandas doesn't have a trim_mean method, but scipy does, although i need to drop the class column...)
    # print('\n'.join([f"{columns[i]}: {var}" for i, var in enumerate(stats.trim_mean(no_class_data, proportiontocut=0.1))]))

    # E) desvio absoluto médio
    # print((no_class_data - no_class_data.mean()).abs().mean())

    # F) variância
    # print(data.var(numeric_only=True))

    # G) desvio-padrão
    # print(data.std(numeric_only=True))

    # H) desvio absoluto mediano da mediana
    # print('\n'.join([f"{columns[i]}: {var}" for i, var in enumerate(stats.median_abs_deviation(no_class_data))]))

    # I) máximo
    # print(data.max(numeric_only=True))

    # J) mínimo
    # print(data.min(numeric_only=True))

    # K) amplitude
    # print(data.max(numeric_only=True) - data.min(numeric_only=True))

    # L) 10o percentil
    # print(data.quantile(q=0.1, numeric_only=True))

    # M) 25o percentil
    # print(data.quantile(q=0.25, numeric_only=True))

    # N) 75o percentil
    # print(data.quantile(q=0.75, numeric_only=True))

    # O) 90o percentil
    # print(data.quantile(q=0.9, numeric_only=True))

    # P) amplitude interquartil
    # print(data.quantile(q=0.75, numeric_only=True) - data.quantile(q=0.25, numeric_only=True))

    # Q) outliers (using the iqr method, 1.5 standart multiplier)
    # iq_range = data.quantile(q=0.75, numeric_only=True) - data.quantile(q=0.25, numeric_only=True)
    # lower_edge = data.quantile(q=0.25, numeric_only=True) - (1.5 * iq_range)
    # upper_edge = data.quantile(q=0.75, numeric_only=True) + (1.5 * iq_range)
    # query = (no_class_data < lower_edge) | (no_class_data > upper_edge)
    # print(query.sum())
    # print(no_class_data[query.any(axis=1)].where(query))