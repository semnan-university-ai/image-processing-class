clc;
clear all;
close all;

image = imread('../benchmark/cameraman.tif');

%image = rgb2gray(image);

figure,
subplot(2,2,1);imshow(image);title('image');
furierT=fftshift(fft2(image));
phase_image=angle(furierT);
subplot(2,2,2);imshow(phase_image,[]),title('phase image');

spectrum_image = log(1 + furierT);
subplot(2,2,3);imshow(spectrum_image,[]),title('spectrum image');

back_to_image = ifft2(ifftshift(furierT));
subplot(2,2,4);imshow(back_to_image,[]),title('fft2(-1) image');