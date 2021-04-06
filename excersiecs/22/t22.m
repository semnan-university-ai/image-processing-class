clc;
clear;
close all;

image = imread('monarch.png');
subplot(1,2,1); imshow(image);
sizePic= size(image);

tempImage= image(:,:,1);
image(:,:,1) = image(:,:,3);
image(:,:,3)=tempImage;

subplot(1,2,2); imshow(image);