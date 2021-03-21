close all
clear all
clc

a = input('Enter a : ');
b = input('Enter b : ');

image = imread("airplane.png");
CropImage = imcrop(image,[a b a b]);

imshow(CropImage);