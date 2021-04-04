clc;
close all;
clear all;
temp = zeros(1000, 1000);
imgsize=size(temp);
position=[500,500];
for i=1:1000
    for j=1:1000
        temp(i,j)=0;
        
    end
end
x = imgsize(1,1)/2
y = imgsize(1,2)/2
imshow(temp);  
centx = position(1,1) ;
centy = position(1,1);
r = 400;
hold on;
theta = 0 : (2 * pi / 10000) : (2 * pi);
pline_x = r * cos(theta) + centx;
pline_y = r * sin(theta) + centy;
k = ishold;
plot(pline_x, pline_y, 'w-', 'LineWidth', 3);

%--------------------------------------------------
%RAHE HALE 2
%--------------------------------------------------
%imshow(temp);
%t=0:0.1:6.3;
%a=position(1,1);
%b=position(1,1);
%r=400;
%hold on;
%x=r.*sin(t)+a;
%y=r.*cos(t)+b;
%plot(x,y,'w');
