clc;
clear;
close all;

image=imread('lena.png');
image=rgb2gray(image);
startx=input("Enter Start of X:");
starty=input("Enter Start of Y:");
endx=input("Enter End of X:");
endy=input("Enter End of Y:");

Crop=zeros(endx-startx,endy-starty,'uint8');
x=endx-startx;
y=endy-starty;
for i=1: x
    for j=1 : y
        Crop(i,j)=image(startx+i,starty+j);
    end
end

subplot(1,2,1),imshow(image);
subplot(1,2,2),imshow(Crop);
