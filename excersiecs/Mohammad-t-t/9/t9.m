clc;
clear;
close all;

orginalPic=imread('fruits.png');
orginalPic=rgb2gray(orginalPic);
picSize=size(orginalPic);

startx=100;
starty=100;
x=300;
y=200;

cropPic=zeros(y,x,'uint8');

for i=1: y
    for j=1 : x
        cropPic(i,j)=orginalPic(starty+i,startx+j);
    end
end

figure,imshow(orginalPic);
figure,imshow(cropPic);
