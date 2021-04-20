clc;
close all;
clear;

h = 100;
w = 200;

image = imread("../../../benchmark/airplane.png");
image = imresize(image, [300 300]);

image2 = imcrop(image, [0 0 h w]);

imshow(image2);


