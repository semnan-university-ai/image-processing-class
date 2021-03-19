close all
clear all
clc

image = imread("jug.jpg");
imageSize = size(image);
result = zeros(imageSize(1,1),imageSize(1,2)*2,'uint8');
flipimage = flip(image,2);

result = cat(2,flipimage,image);

imshow(result);