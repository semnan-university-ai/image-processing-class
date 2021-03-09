clc;
clear all;
close all;

img = imread('airplane.png');
grayimg = rgb2gray(img);
bwimg = im2bw(img);
%?? ?????? 0.5
bwimg2 = im2bw(img,0.5);
%?? ?????? 0.7
bwimg3 = im2bw(img,0.7);
figure;
subplot(2,3,1); imshow(img);
subplot(2,3,2); imshow(grayimg);
subplot(2,3,3); imshow(bwimg);
subplot(2,3,4); imshow(bwimg2);
subplot(2,3,5); imshow(bwimg3);