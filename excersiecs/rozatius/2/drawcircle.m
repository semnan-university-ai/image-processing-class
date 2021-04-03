clc;clear;close all;
r=300;
xx=500;yy=500;
img=zeros(1000);
%draw circle
for th =0:1/r:2*pi
    x = round(r * cos(th)) + xx;
    y = round(r * sin(th)) + yy;
    img(x, y)=1;
end
imshow(img);