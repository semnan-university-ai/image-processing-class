clc;
clear;
close all;

image = imread("../benchmark/fruits.png");
%image = imresize(image, [ 100 100 ]);
%imshow(image);
figure, imshow(image);
figure, imshow(image(:, :, 1));
figure, imshow(image(:, :, 2));
figure, imshow(image(:, :, 3));