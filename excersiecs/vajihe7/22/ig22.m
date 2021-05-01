
clear;
close all;
clc;

image = imread('girl.png');
i=image;

sizeimage= size(i);

m= i(:,:,1);
i(:,:,1) = i(:,:,3);
i(:,:,3)=m;

subplot(1,2,1); imshow(image);
subplot(1,2,2); imshow(i);