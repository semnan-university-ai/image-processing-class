close all
clear all
clc

image = imread("../benchmark/fruits.png");
image2 = rgb2gray(image);

percent = 20;
p = 255*percent/100;
[x,y] = size(image2);

NoiseImg = image2;
Rmatrix = randi(x,y);

NoiseImg(Rmatrix <= p/2) = 0;
NoiseImg(Rmatrix > p/2 & Rmatrix < p) = 255;

imshow(NoiseImg);
