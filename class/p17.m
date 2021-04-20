clc;
clear;
close all;

image = imread("histogram.jpg");%imread("../benchmark/fruits.png");
%image = imresize(image, [ 100 100 ]);
%figure, imshow(image);
%image = rgb2gray(image);
figure, imshow(image);
image_EQ1 = histeq(image);
image_EQ2 = histeq(image_EQ1);
figure, imshow(image_EQ1);
figure, imshow(image_EQ2);


%image = rgb2gray(image);
%figure, imshow(image);
%figure, histeq(image);
%imshow(image(:, :, 1));

%image(:, :, 1) = histeq(image(:, :, 1));
%image(:, :, 2) = histeq(image(:, :, 2));
%image(:, :, 3) = histeq(image(:, :, 3));

%green = image(:, :, 2);
%blue = image(:, :, 3);
%image(:, :, 1) = blue;
%image(:, :, 3) = green;
%figure, imshow(image);