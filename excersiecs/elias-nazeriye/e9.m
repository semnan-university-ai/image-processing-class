close all;
clear all;
clc;


pic=imread('e3.png');
pic=rgb2gray(pic);
sx=input("Enter the start length of the coordinates:");
ex=input("Enter the length of the coordinate end:");
sy=input("Enter the start height of the coordinate:");
ey=input("Enter the end height of the coordinates:");

Crop=zeros(ex-sx,ey-sy,'uint8');
x=ex-sx;
y=ey-sy;
for i=1: x
    for j=1 : y
        Crop(i,j)=pic(sx+i,sy+j);
    end
end

subplot(1,2,1),imshow(pic);
subplot(1,2,2),imshow(Crop);