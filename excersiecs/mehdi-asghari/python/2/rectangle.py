import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as colors
from skimage import draw

arr = np.zeros((1000, 1000))
stroke = 1
radius = 200
inner_radius = radius - (stroke // 2) + (stroke % 2) - 1 
outer_radius = radius + ((stroke + 1) // 2)
ri, ci = draw.circle(500, 500, radius=inner_radius, shape=arr.shape)
ro, co = draw.circle(500, 500, radius=outer_radius, shape=arr.shape)
arr[ro, co] = 1
arr[ri, ci] = 0

fig = plt.figure()
fig.patch.set_facecolor('black')

plt.imshow(arr)
plt.show()