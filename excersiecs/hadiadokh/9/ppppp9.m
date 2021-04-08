close all;
clear all;
clc;
a = input('Enter a = ');
b = input('Enter b = ');
image = imread('d:\tamrin\8\yas.jpg');
CropImage = imcrop(image,[a b a b]);
imshow(CropImage); 