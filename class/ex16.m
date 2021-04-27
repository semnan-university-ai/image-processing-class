clc;
close all;
clear;

image = imread("../benchmark/zelda.png");
[ x, y ] = size(image); 

image(x / 2 - 25: x / 2 + 25, y / 2 - 100: y / 2 + 100) = 0;

figure, imshow(image);