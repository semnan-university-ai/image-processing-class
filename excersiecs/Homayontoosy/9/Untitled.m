clc;
clear;
close all;

row1=150;row2=300;col1=100;col2=300;

img=rgb2gray(imread('d:/tamrin 9/joje.jpg'));

subplot(1,2,1),imshow(img),title('orginal');

subImage = img(row1:row2, col1:col2,:);

subplot(2,2,4),imshow(subImage),title('corp method 2');
