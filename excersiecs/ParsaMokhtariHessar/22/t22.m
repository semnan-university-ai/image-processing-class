clc;
close all;
clear all;
image = imread("../../../Benchmark/baboon.png");
imageResult = zeros(size(image));
imageResult(:,:,3) = image(:,:,1);
imageResult(:,:,1) = image(:,:,3);
imageResult(:,:,2) = image(:,:,2);
figure,imshow(uint8(imageResult));
imsave;