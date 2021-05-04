clc;
close all;
clear all;
image = imread("../img/baboon.png");
imshow(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
myhist(r);
figure,
myhist(g);
figure,
myhist(b);