close all;
clear all;
clc;

image1 = imread("img/lena.png");
%image1 = rgb2gray(image1);

image2 = im2bw(image1, 0.5);

imhist(image1);