clc;
%clear all;
close all;

%image = imread("../benchmark/girl.png");
%image = imresize(image, [50 50])

imagegray = rgb2gray(image);

imagebinary = im2bw(image, 0.2);
figure;
imshow(imagebinary);

imagebinary = im2bw(image, 0.5);
figure;
imshow(imagebinary);

imagebinary = im2bw(image, 0.7);
figure;
imshow(imagebinary);

imagebinary = im2bw(image, 0.001);
figure;
imshow(imagebinary);

%figure;
%imshow(image);

%figure;
%imshow(imagegray);

%figure;
%imshow(imagebinary);