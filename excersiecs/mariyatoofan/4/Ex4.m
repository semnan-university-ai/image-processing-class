clc;
clear;
close all;

I = imread('peppers.png');

[W,H,CH]=size(I);
J = imcrop(I,[H-100 W-100 100 100]);

figure('color','white');
subplot(211);
imshow(I);
subplot(212);
imshow(J);