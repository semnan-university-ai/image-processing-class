from PIL import ImageFont, ImageDraw, Image
import numpy as np
import cv2
import sys

import locale
locale.getpreferredencoding()
locale.getpreferredencoding()

image = cv2.imread("image.png")

cv2_im_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
pil_im = Image.fromarray(cv2_im_rgb)

draw = ImageDraw.Draw(pil_im)

font = ImageFont.truetype("font.ttf", 50)
name = 'مهدی اصغری'
draw.text((250, 250), name, font=font)

cv2_im_processed = cv2.cvtColor(np.array(pil_im), cv2.COLOR_RGB2BGR)
cv2.imwrite("result.png", cv2_im_processed)