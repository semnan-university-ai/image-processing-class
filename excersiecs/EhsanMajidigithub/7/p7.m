clc;close all;clear;

img=zeros(400);
dd=[50,50,100,50,100,100,50,100,50,50,... %spure
    0,50,200,100,250,100,150,50,200,...   %triangle
    0,50,300,50,350,150,350,150,300,50,300,... %rectangle
    0,200,100,250,150,300,100,250,50,200,100]; %Diamond
l=length(dd)-2;k=1;
while (k < l)
    if (dd(k+2)==0) k=k+3; end
    
    x0=dd(k);y0=dd(k+1);x1=dd(k+2);y1=dd(k+3);
    if( x0 == x1 ) img(x0,y0:y1); end %Draw vertical line
    %Simplified Bresenham algorithm
    dx = abs(x1-x0);
    dy = abs(y1-y0);
 
    if(x0 < x1) sx = 1;else sx = -1; end
    if(y0 < y1) sy = 1;else sy = -1; end
 
    err = dx - dy;
    x= x0;y = y0;
 
    while(true)
        img(x,y)=1; %setPixel
        if( x == x1 )&&( y == y1) break; end
        e2 = 2*err;
        if( e2 > -dy ) err = err - dy; x = x + sx; end
        if( e2 <  dx ) err = err + dx; y = y + sy; end
    end 
    k=k+2;
end
imshow(img);