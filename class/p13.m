clc;
clear;
close all;

image = imread("img/airplane.png");
image = rgb2gray(image);

%figure, imshow(image);
%image1 = imnoise(image, "gaussian", 1);
%figure, imshow(image1);
%image3 = imnoise(image, "poisson");
%figure, imshow(image3);
%image4 = imnoise(image, "speckle", .5);
%figure, imshow(image4);

image = imnoise(image, "salt & pepper", .1);
figure, imshow(image);



