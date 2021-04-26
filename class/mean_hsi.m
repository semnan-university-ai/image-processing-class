clc;
close all;
clear;

image = imread("i.png");
figure, imshow(image);

%temp = image(:,:,1);
%image(:,:,1) = image(:,:,2);
%image(:,:,2) = temp;
%figure, imshow(image);

%image = rgb2hsv(image);
filterWindow = -1 * ones(3);
filterWindow = 8;
filteredImage = conv2(image(:,:,1), filterWindow, 'same');
image(:,:,2) = filteredImage;

%image = hsv2rgb(image);
figure, imshow(image);