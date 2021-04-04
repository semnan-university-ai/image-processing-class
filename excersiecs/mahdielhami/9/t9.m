clc;
close all;
clear all;
grayImage = imread('img\peppers.png');
grayImage=rgb2gray(grayImage);
xmin=250;
ymin=400;
width=300;
height=300;
subplot(1,2,1);
imshow(grayImage);
h = impixelinfo();
axis on;
I2 = imcrop(grayImage,[xmin,ymin,width,height]);
subplot(1,2,2);
imshow(I2)
axis on;