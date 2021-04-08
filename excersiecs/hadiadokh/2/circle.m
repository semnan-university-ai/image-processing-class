clc;
clear;
close all;

shoa=100;
xcenter=250;
ycenter=250;
img=zeros(500);
for theta =0:1/shoa:2*pi
    x = round(shoa * cos(theta)) + xcenter;
    y = round(shoa * sin(theta)) + ycenter;
    img(x,y)=1;
end
imshow(img);