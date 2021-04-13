clc;
close all;
clear;

image = imread("../excersiecs/alirezachaji/5/kozeh.bmp");
image = rgb2gray(image);

image_output = [ image flip(image, 2) ];

image_output = uint8(image_output);
imshow(image_output);