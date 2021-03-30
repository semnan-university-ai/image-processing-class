clc;
clear all;
close all;
image = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');

[cropp_img,rect] = imcrop(image,[100 100 200 200]);
figure;