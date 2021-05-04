close all;
clear all;
clc;

pic = imread("girl.png");
imageResult = zeros(size(pic));
imageResult(:,:,1) = pic(:,:,3);
imageResult(:,:,3) = pic(:,:,1);
imageResult(:,:,2) = pic(:,:,2);
figure,imshow(uint8(imageResult));