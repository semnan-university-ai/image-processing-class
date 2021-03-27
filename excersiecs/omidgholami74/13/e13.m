clc;
close all;
clear all;


image=e13_negative("benchmark/baboon.png");
image=e11_noise(image,900);
imshow(image);
meanIntensity = mean(image(:));
imshow(image)
disp(meanIntensity)