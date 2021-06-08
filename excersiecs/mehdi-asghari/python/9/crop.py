import numpy as np
import cv2

image = cv2.imread('image.png')
y=0
x=0
h=100
w=200
crop = image[y:y+h, x:x+w]
cv2.imshow('Image', crop)
cv2.waitKey(0) 