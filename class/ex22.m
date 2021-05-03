clc;
close all;
clear;

image = imread("../benchmark/fruits.png");

figure, imshow(image);

temp_chanell = image(:,:,1);
image(:,:,1) = image(:,:,3);
image(:,:,3) = temp_chanell;

figure, imshow(image);