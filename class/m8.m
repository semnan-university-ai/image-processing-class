clc;
close all;
clear;

image = imread("histogram.jpg");
EQ1 = histeq(image);
EQ2 = histeq(EQ1);

figure, imshow(image);
figure, imshow(EQ1);
figure, imshow(EQ2);