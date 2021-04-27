clc;
close all;
clear;

image = imread("../excersiecs/faeze75/14/city/09.png");
image = rgb2gray(image);
%figure, imhist(image);
%figure, imshow(image);
%figure, histeq(image);
%figure, imhist(histeq(image));
figure, histeq(image);
figure, imshow( histeq(histeq(image)) );