clc;
clear;
close all;


image = imread('pool.png');
image=rgb2gray(image);

startX=350;
startY=230;

for x=1:110
for y=1 : 110
    image(startY+y,startX+x)=48;
end
end

imshow(image);