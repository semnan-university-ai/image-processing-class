clc;
close all;
clear;

image = imread("../benchmark/fruits.png");

hist(image(:,:,1));
hist(image(:,:,2));
hist(image(:,:,3));
figure, imshow(image(:,:,1));
figure, imshow(image(:,:,2));
figure, imshow(image(:,:,3));