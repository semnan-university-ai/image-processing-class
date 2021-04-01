close all
clear all
clc

a = 300;
b =100;

image = imread("boat.png");
imagecrop = imcrop(image,[a b a b]);
figure;
imshow(image);
figure;
imshow(imagecrop);