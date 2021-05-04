close all
clear all
clc

width_x = input('Enter width : ');
length_y = input('Enter length : ');
addpath("benchmark");
image = imread("pool.png");
figure
imshow(image);

imgcrop = imcrop(image,[width_x length_y length_y  width_x]);
figure

imshow(imgcrop);
