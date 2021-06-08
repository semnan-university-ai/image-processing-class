from PIL import Image

img = Image.open("mountain.png")
img = img.convert("RGB")
datas = img.getdata()
new_image_data = []
for item in datas:
    if item[0] in list(range(200, 255)):
        new_image_data.append((0, 0, 0))
    else:
        new_image_data.append(item)
        
img.putdata(new_image_data)
img.save("result.png")
img.show()