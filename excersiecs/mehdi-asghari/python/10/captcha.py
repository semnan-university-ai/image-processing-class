from PIL import Image, ImageDraw, ImageFont
import random
import string
 
 

characters = string.ascii_letters+string.digits
 
 
def selectedCharacters(length):
 
 
    result = ""
 
    for i in range(length):
 
        result += random.choice(characters)
        print(result)
 
    return result
 
 
 
def getColor():
 
 
    r = random.randint(0,255)
 
    g = random.randint(0,255)
 
    b = random.randint(0,255)
 
    return (255,255,255)
 
 
 
def main(size=(200,100), characterNumber=6, bgcolor=(0,0,0)):
 
    imageTemp = Image.new('RGB', size, bgcolor)
 
 
    font = ImageFont.truetype('font.ttf', 48)
 
    draw = ImageDraw.Draw(imageTemp)
 
    text = selectedCharacters(characterNumber)
 
    width, height = draw.textsize(text, font)
 
       
 
    offset = 2
 
    for i in range(characterNumber):
 
        offset += width//characterNumber
 
        position = (offset, (size[1]-height)//2+random.randint(-10,10))
 
        draw.text(xy=position, text=text[i], font=font, fill=getColor())
 
 
    imageFinal = Image.new('RGB', size, bgcolor)
 
    pixelsFinal = imageFinal.load()
 
    pixelsTemp = imageTemp.load()
 
    for y in range(0, size[1]):
 
        offset = random.randint(-1,1)
 
        for x in range(0, size[0]):
 
            newx = x+offset
 
            if newx>=size[0]:
 
                newx = size[0]-1
 
            elif newx<0:
 
                newx = 0
 
            pixelsFinal[newx,y] = pixelsTemp[x,y]
 
    draw = ImageDraw.Draw(imageFinal)
 
 
    for i in range(int(size[0]*size[1]*0.07)):
 
        draw.point((random.randint(0,size[0]), random.randint(0,size[1])), fill=getColor())
 
         
 
    for i in range(8):
 
        start = (0, random.randint(0, size[1]-1))
 
        end = (size[0], random.randint(0, size[1]-1))
 
        draw.line([start, end], fill=getColor(), width=1)
 
         
 
    for i in range(8):
 
        start = (-50, -50)
 
        end = (size[0]+10, random.randint(0, size[1]+10))
 
        draw.arc(start+end, 0, 360, fill=getColor())
 
 
    imageFinal.save("result.png")
 
 
 
if __name__=="__main__":
 
    main((200,100), 8, (0,0,0))