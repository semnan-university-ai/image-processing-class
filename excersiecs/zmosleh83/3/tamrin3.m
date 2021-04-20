close all
clear all
clc
image = imread("C:\SemnanClass\9902\TA\Benchmark\airplane.png");
rgb = rand(200,200,3);
% Convert it 
gray = 0.2989 * rgb(:,:,1) + 0.5870 * rgb(:,:,2) + 0.1140 * rgb(:,:,3);
imshow(image); 

imshow(gray); 