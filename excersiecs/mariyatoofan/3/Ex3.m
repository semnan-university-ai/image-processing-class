clc;
clear;
close all;

I = imread('peppers.png');

I2 = I(:,:,1);

figure('color','white');
subplot(211);
imshow(I);
subplot(212);
imshow(I2);