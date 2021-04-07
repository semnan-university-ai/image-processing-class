clc;
close all;
clear;
p=0;
pic=zeros(600);
shape=[p,50,50,100,50,100,100,50,100,50,50,... %spure
    p,50,200,100,250,100,150,50,200,...   %triangle
    p,50,300,50,350,150,350,150,300,50,300,... %rectangle
    p,100,400,150,450,100,500,50,450,100,400]; %Diamond
a=length(shape)-2;
b=1;
while (b < a)
    if (shape(b)==0) b=b+1; end
    if (shape(b+2)==0) b=b+3; end
    
    a1=shape(b);
    b1=shape(b+1);
    a2=shape(b+2);
    b2=shape(b+3);
    if( a1 == a2 )
        pic(a1,b1:b2); 
    end 
    drawx = abs(a2-a1);
    drawy = abs(b2-b1);
 
    if(a1 < a2)
        x2 = 1;
    else x2 = -1;
    end
    if(b1 < b2)
        sy = 1;
    else sy = -1;
    end
 
    e1 = drawx - drawy;
    x= a1;y = b1;
 
    while(true)
        pic(x,y)=1; %setPixel
        if( x == a2 )&&( y == b2)
            break;
        end
        e2 = 2*e1;
        if( e2 > -drawy ) e1 = e1 - drawy;
            x = x + x2;
        end
        if( e2 <  drawx ) e1 = e1 + drawx;
            y = y + sy; 
        end
    end 
    b=b+2;
end
imshow(pic);
