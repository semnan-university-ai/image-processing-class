clc;
clear;
close all;

page=zeros(400,400,'uint8');

%Square
size=150;
start=[25,25];

for x =1 : size
    page(start(1)+1,start(2)+x)=255;
    page(start(1)+size,start(2)+x)=255;
    page(start(1)+x,start(2)+1)=255;
    page(start(1)+x,start(2)+size)=255;
end

%rectangle
xsize=170;
ysize=120;
start=[240,15];

for x =1 : xsize
    page(start(1)+1,start(2)+x)=255;
    page(start(1)+ysize,start(2)+x)=255;

end
for y =1 : ysize
    page(start(1)+y,start(2)+1)=255;
    page(start(1)+y,start(2)+xsize)=255;
end

%Triangle
size=150;
start=[25,225];
for x =1 : round( size/2)
    page(start(1)+1,start(2)+x)=255;
    page(start(1)+x,start(2)+x)=255;
end
y=start(1)+round( size/2);
for x =round( size/2) : size-1
    page(start(1)+1,start(2)+x)=255;
    page(y,start(2)+x)=255;
    y=y-1;
end

%Diamond
size=150;
start=[300,225];
x2=round(size/2);
y=start(1);
for x =1 :x2
    if x<= (x2/2)
          page(start(1)+x,start(2)+2*x)=255;
          page(start(1)+x,start(2)+(2*x)+1)=255;
          page(y,start(2)+2*x)=255;
          page(y,start(2)+(2*x)+1)=255;
                        
          y=y-1;    
    else
          page(start(1)+x2-x,start(2)+2*x)=255;
          page(start(1)+x2-x,start(2)+(2*x)+1)=255;

          page(y,start(2)+2*x)=255;
          page(y,start(2)+(2*x)+1)=255;
        
          y=y+1;    
    end
end

imshow(page);