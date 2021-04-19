clc;
clear;
close all;

image=imread('saat.png');
img_with_noise=rgb2gray(image);
[m,n]=size(img_with_noise);

%salt & pepper

x = randi([0 ,255] , m ,n);
img_with_noise(x<=0+2)=0;
img_with_noise(x>=255-2)=255;

%show
subplot(1,2,1); imshow(img_with_noise);title('Image with noise','Color','blue');
subplot(1,2,2);imshow(image);title('Orginal image','Color','blue');

