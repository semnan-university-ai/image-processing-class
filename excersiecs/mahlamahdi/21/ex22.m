clc;
clear;
close all;
pic = imread('fruits.png');

image =pic;
 temp= image(:,:,1);
 image(:,:,1) = image(:,:,3);
 image(:,:,3)=temp;
 
 subplot(1,2,1), imshow(pic);
  subplot(1,2,2), imshow(image);
 