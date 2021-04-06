clc;
clear;
close all;

image = imread("../benchmark/fruits.png");
%figure, imshow(image);

%EQ1 = histeq(image);
%figure, imshow(EQ1);

%figure, imhist(image(:, :, 1));
%figure, imhist(image(:, :, 2));
%figure, imhist(image(:, :, 3));

%image(:, :, 1) = histeq(image(:, :, 1));
%image(:, :, 2) = histeq(image(:, :, 2));
%image(:, :, 3) = histeq(image(:, :, 3));

%figure, imhist(image(:, :, 1));
%figure, imhist(image(:, :, 2));
%figure, imhist(image(:, :, 3));

%figure, imshow(image);

%figure, imshow(image(:, :, 1));
%figure, imshow(image(:, :, 2));
%figure, imshow(image(:, :, 3));

figure, imshow(image);
red = image(:, :, 1);
green = image(:, :, 2);
image(:, :, 1) = green;
image(:, :, 2) = red;
figure, imshow(image);