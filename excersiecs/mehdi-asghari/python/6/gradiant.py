import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 1, 100)
image = np.tile(x, (100, 1)).T

plt.imshow(image, cmap='gray')
plt.show()