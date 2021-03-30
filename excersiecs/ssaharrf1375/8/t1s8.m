clc;
clear all;
close all;

image = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');

rotate45_image = imrotate(image,45,'bicubic');
rotate90_image = imrotate(image,90,'bicubic');
rotate120_image = imrotate(image,120,'bicubic');
rotate180_image = imrotate(image,180,'bicubic');
rotate360_image = imrotate(image,360,'bicubic');
figure;
subplot(2,3,1); imshow(image);
subplot(2,3,2); imshow(rotate45_image);
subplot(2,3,3); imshow(rotate90_image);
subplot(2,3,4); imshow(rotate120_image);
subplot(2,3,5); imshow(rotate180_image);
subplot(2,3,6); imshow(rotate360_image);