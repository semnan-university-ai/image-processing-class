clc;
close all;
clear;

image1 = imread("../benchmark/watch.png");
image2 = imread("../benchmark/pool.png");

image1 = imresize(image1, [512 512]);
image2 = imresize(image2, [512 512]);

temp = image1(:,:,1);
image1(:,:,1) = image2(:,:,1);
image2(:,:,2) = temp;

figure, imshow(image1);
figure, imshow(image2);