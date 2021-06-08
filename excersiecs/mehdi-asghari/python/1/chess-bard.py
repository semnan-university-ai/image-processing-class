import turtle

t = turtle.Turtle()
t.speed(0)
t.penup() 
t.goto(0, 0)
t.pendown() 

width=60  
height=60
def drawblock(x,y,fill):  
        t.penup()
        t.goto((0-4+x)*width, (0-4+y)*height) 
        t.pendown()
        if fill: t.begin_fill()
        for k in range(4):
            t.forward(50) 
            t.left(90) 
            t.color("black")
        if fill: t.end_fill()

fill = True
for x in range(8):
    fill = not fill  
    for y in range(8):
       drawblock(x,y, fill)
       fill = not fill 
    
turtle.done() 