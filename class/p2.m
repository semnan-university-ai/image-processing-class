clc;
close all;
clear all;

image1 = imread("img/airplane.png");
image2 = rgb2gray(image1);
image3 = im2bw(image1, 0.7);

figure,
imshow(image1);

figure,
imshow(image2);

figure,
imshow(image3);
