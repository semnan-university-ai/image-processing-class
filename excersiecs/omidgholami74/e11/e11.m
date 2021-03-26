clc;
close all;
clear all;


figure;
image=e11_noise('benchmark/lena.png',1000);
imshow(image);

figure;
image=e11_noise('benchmark/airplane.png',1000);
imshow(image);

figure;
image=e11_noise('benchmark/baboon.png',1000);
imshow(image);

figure;
image=e11_noise('benchmark/peppers.png',1000);
imshow(image);