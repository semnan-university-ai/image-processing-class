clc;
close all;
clear;


image = imread("../../../benchmark/fruits.png");
% [rows, cols, chn] = size(image);
imshow(image);

image(:,:,:) = floor(image(:,:,:)/51)*51;

figure;
imshow(image);