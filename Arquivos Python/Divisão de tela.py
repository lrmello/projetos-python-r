import pandas as pd
import matplotlib.pyplot as plt

base = pd.read_csv('trees.csv')
base.head()

plt.scatter(base.Girth, base.Volume)
