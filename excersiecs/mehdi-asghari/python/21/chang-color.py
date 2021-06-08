import cv2

im = cv2.imread("lena.png")

# To Grayscale
im = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
cv2.imwrite("grayscale.jpg", im)

# To Black & White
im = cv2.threshold(im, 127, 255, cv2.THRESH_BINARY)[1]
cv2.imwrite("black-white.jpg", im)