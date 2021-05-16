clc;
clear;
close all;

image = imread("../benchmark/cameraman.tif");

gaussian_noise = imnoise(image,'gaussian');

poisson_noise = imnoise(image,'poisson');

salt_pepper_noise = imnoise(image,'salt & pepper',0.2);

speckle_noise = imnoise(image,'speckle');

subplot(3,2,1), imshow(image), title("orginal image")
subplot(3,2,2), imshow(gaussian_noise), title("gaussian noise")
subplot(3,2,3), imshow(poisson_noise), title("poisson noise")
subplot(3,2,4), imshow(salt_pepper_noise), title("salt & pepper noise")
subplot(3,2,5), imshow(speckle_noise), title("speckle noise")