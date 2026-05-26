import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

columns = ["buying", "maint", "doors", "persons", "lug_boot", "safety", "class"]
df = pd.read_csv("../databases/car+evaluation/car.data", names=columns)

for var in columns[:-1]:
    print(f"\nCrosstab between {var} and class:")
    print(pd.crosstab(df[var], df["class"]))