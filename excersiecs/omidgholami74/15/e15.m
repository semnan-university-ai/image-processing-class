clc;
close all;
clear all;

image =imread('benchmark/pool.png');
figure;
imshow(image);
image =rgb2gray(image);
ball=[403 277 43]
image = insertShape(image,'FilledCircle',ball,...
    'Color',[49 49 49],'Opacity',1);

figure;imshow(image);