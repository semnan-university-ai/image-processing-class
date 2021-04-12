clc;
clear;
close all;
pic = imread('fruits.png');
image =pic;
 image(:,:,1)= ((image(:,:,1)/51))*51;
image(:,:,2)= ((image(:,:,2)/51))*51;
image(:,:,3)= ((image(:,:,3)/51))*51;
 
 subplot(1,2,1), imshow(pic);
  subplot(1,2,2), imshow(image);
 