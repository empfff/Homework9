import pandas as pd
import numpy as np

np.random.seed(0)
df = pd.DataFrame(np.random.random(size=(20,5)), columns=list('ABCDE'))
print(df.mean())
