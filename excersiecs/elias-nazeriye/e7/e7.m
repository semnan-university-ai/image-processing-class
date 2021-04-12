close all;
clear all;
clc;




p=ones(500,500);

% square

si=200;
start=[10,10];

for x =0 : si
    p(start(1),start(2)+x)=0;
    p(start(1)+si,start(2)+x)=0;
    p(start(1)+x,start(2))=0;
    p(start(1)+x,start(2)+si)=0;
end


%Triangle
start=[300,100];
si = 100;

for x =0 : si
    p(start(1),start(2)+x)=0;
    p(start(1)+x,start(2))=0;
end
y=0;
for x=0:si
    p(start(1)+x,(start(2)+si)-y)=0;
    y=y+1;
end
imshow(p);

x_axis= 100;
y_axis=150;
start=[20,300];
for x =0 : si
    p(start(1),start(2)+x)=0;
    p(start(1)+y_axis,start(2)+x)=0;
    
end
si=150;
start=[20,300];
for x =0 : si
    p(start(1)+x,start(2))=0;
    p(start(1)+x,start(2)+x_axis)=0;
   
end
    
% Diamond
si=50;
start=[300,250];
y=0;
for x=0:si
    p(start(1)+x,(start(2)+si)-y)=0;
    p(start(1)+x,(start(2)+si)+y)=0;
    y=y+1;
end
y=0;
for x=0:si
    p((start(1)+si)+x,(start(2)+2*si)-x)=0;
   p((start(1)+si)+y,start(2)+x)=0;
    y=y+1;
  
end


    imshow(p)