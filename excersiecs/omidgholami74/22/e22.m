clear all
clc
clear;


image = imread('benchmark/lena.png');    
figure,imshow(image);          
B= image(:, :, 3);             
image(:,:,3)=image(:,:,1);    
image(:,:,1)=B;               
figure,
imshow(image);                