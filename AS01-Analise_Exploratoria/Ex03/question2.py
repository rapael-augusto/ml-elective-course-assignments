import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

columns = ["b", "g", "r", "y"]
df = pd.read_csv("../databases/skin+segmentation/Skin_NonSkin.txt", sep='\t', names=columns)

# A) gráfico de compartimentos hexagonais
#fig, axes = plt.subplots(2, 3, figsize=(12, 10))
#axes = axes.flatten()

#p_index = 0
#for i, var_x in enumerate(columns[:-1]):
#    for j, var_y in enumerate(columns[:-1]):
#        if i != j and p_index < 6:
#            axes[p_index].hexbin(df[var_x], df[var_y], gridsize=30, cmap='viridis', mincnt=1)
#            axes[p_index].set_xlabel(var_x)
#            axes[p_index].set_ylabel(var_y)
#            p_index += 1
            
#plt.suptitle('hexagonal graphs')
#plt.tight_layout()
#plt.show()

# B) para cada classe, gráfico de compartimentos hexagonais
#fig, axes = plt.subplots(2, 3, figsize=(12, 10))
#axes = axes.flatten()

#df_skin = df[df['y'] == 1]
#df_non_skin = df[df['y'] == 2]  

#pairs = [('b', 'g'), ('b', 'r'), ('g', 'r')]

#for i, (var_x, var_y) in enumerate(pairs):
#    axes[i].hexbin(df_skin[var_x], df_skin[var_y], gridsize=30, cmap='Reds', mincnt=1)
#    axes[i].set_xlabel(f'{var_x}')
#    axes[i].set_ylabel(f'{var_y}')
#    axes[i].set_title(f'Skin - {var_x} vs {var_y}')

#for i, (var_x, var_y) in enumerate(pairs):
#    axes[i+3].hexbin(df_non_skin[var_x], df_non_skin[var_y], gridsize=30, cmap='Blues', mincnt=1)
#    axes[i+3].set_xlabel(f'{var_x}')
#    axes[i+3].set_ylabel(f'{var_y}')
#    axes[i+3].set_title(f'Non-Skin - {var_x} vs {var_y}')

#plt.suptitle('hexagonal graphs by skin (top) or non-skin (bottom)')
#plt.tight_layout()
#plt.show()

# C) gráfico de contornos
#fig, axes = plt.subplots(2, 3, figsize=(12, 10))
#axes = axes.flatten()
#df_sample = df.sample(n=1000, random_state=42)

#p_index = 0
#for i, var_x in enumerate(columns[:-1]):
#    for j, var_y in enumerate(columns[:-1]):
#        if i != j and p_index < 6:
#            sns.kdeplot(data=df_sample, x=var_x, y=var_y, ax=axes[p_index], cmap='viridis', fill=False, thresh=0.05, levels=10)
#            axes[p_index].set_xlabel(var_x)
#            axes[p_index].set_ylabel(var_y)
#            axes[p_index].set_title(f'{var_x} vs {var_y}')
#            p_index += 1

#plt.suptitle('contour, 1000 sample (because its taking too long to run...)')
#plt.tight_layout()
#plt.show()

# D) para cada classe, gráfico de contornos
#fig, axes = plt.subplots(2, 3, figsize=(12, 10))
#axes = axes.flatten()

#df_skin_sample = df[df['y'] == 1].sample(n=500, random_state=42)
#df_non_skin_sample = df[df['y'] == 2].sample(n=500, random_state=42)

#pairs = [('b', 'g'), ('b', 'r'), ('g', 'r')]

#for i, (var_x, var_y) in enumerate(pairs):
#    sns.kdeplot(data=df_skin_sample, x=var_x, y=var_y, ax=axes[i], cmap='Reds', fill=False, thresh=0.05, levels=10)
#    axes[i].set_xlabel(f'{var_x}')
#    axes[i].set_ylabel(f'{var_y}')
#    axes[i].set_title(f'Skin - {var_x} vs {var_y}')

#for i, (var_x, var_y) in enumerate(pairs):
#    sns.kdeplot(data=df_non_skin_sample, x=var_x, y=var_y, ax=axes[i+3], cmap='Blues', fill=False, thresh=0.05, levels=10)
#    axes[i+3].set_xlabel(f'{var_x}')
#    axes[i+3].set_ylabel(f'{var_y}')
#    axes[i+3].set_title(f'Non-Skin - {var_x} vs {var_y}')

#plt.suptitle('contour graphs by skin (top) or non-skin (bottom)')
#plt.tight_layout()
#plt.show()