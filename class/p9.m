clc;
close all;
clear all;

figure;

image = imread("img/airplane.png");
image = rgb2gray(image);


bitplane1 = bitget(image, 1);
figure;
imshow(logical(bitplane1));

bitplane2 = bitget(image, 2);
figure;
imshow(logical(bitplane2));

bitplane3 = bitget(image, 3);
figure;
imshow(logical(bitplane3));

bitplane4 = bitget(image, 4);
figure;
imshow(logical(bitplane4));

bitplane5 = bitget(image, 5);
figure;
imshow(logical(bitplane5));

bitplane6 = bitget(image, 6);
figure;
imshow(logical(bitplane6));

bitplane7 = bitget(image, 7);
figure;
imshow(logical(bitplane7));

bitplane8 = bitget(image, 8);
figure;
imshow(logical(bitplane8));