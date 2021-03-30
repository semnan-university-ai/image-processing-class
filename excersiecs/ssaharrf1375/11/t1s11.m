clc;
clear all;
close all;

image_boat = imread('C:\Program Files\Polyspace\R2019b\bin\img\boat.png');
noise_boat = imnoise(image_boat,'salt & pepper');
subplot(2,2,1); imshow(noise_boat);

image_girl = imread('C:\Program Files\Polyspace\R2019b\bin\img\girl.png');
noise_girl = imnoise(image_girl,'salt & pepper');
subplot(2,2,2); imshow(noise_girl);

image_barbara = imread('C:\Program Files\Polyspace\R2019b\bin\img\barbara.png');
noise_barbara = imnoise(image_barbara,'salt & pepper');
subplot(2,2,3); imshow(noise_barbara);

image_lena = imread('C:\Program Files\Polyspace\R2019b\bin\img\lena.png');
noise_lena = imnoise(image_lena,'salt & pepper');
subplot(2,2,4); imshow(noise_lena);