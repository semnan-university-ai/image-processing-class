close all
clear all
clc

image = imread("../benchmark/pool.png");
[x,y] = size(image);

subplot(1,2,1)
imshow(image);
title('Before');

temp = zeros(x,y);

temp = image(:,:,3);
image(:,:,3) = image(:,:,1);
image(:,:,1) = temp;

subplot(1,2,2)
imshow(image);
title('After');