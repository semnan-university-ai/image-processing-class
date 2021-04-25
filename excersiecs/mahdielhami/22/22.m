clc;
close all;
clear all;
img = imread("img/frymire.png");
figure
imshow(img);
result = zeros(size(img));
result(:,:,3) = img(:,:,1);
result(:,:,1) = img(:,:,3);
result(:,:,2) = img(:,:,2);
figure,imshow(uint8(result));
