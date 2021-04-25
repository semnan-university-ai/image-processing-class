% Tamrin 13
close all                           % clse all windiws
clear all                           % clear vars
clc                                  % clear command line
I = imread('1.jpg');                % read image
r = rgb2gray(I);
J = imnoise(r,'salt & pepper',0.05);
figure(1)
imshow(J)
disp(' mean from 0.05');
xlabel('Noise density=0.05')
mean(mean(J))
J = imnoise(r,'salt & pepper',0.01);  % Add noise to image
figure(2)
imshow(J)
disp(' mean from 0.01');
mean(mean(J))                 % calculate mean 
xlabel('Noise density=0.01')


J = imnoise(r,'salt & pepper',0.5);  % add noise to image 
figure(3)
imshow(J)
disp(' mean from 0.5');
mean(mean(J))
xlabel('Noise density=0.5')    