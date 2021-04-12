close all
clear all
clc
pic=imread('benchmark\fruits.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
r=pic(:,:,1);
pic(:,:,1)=pic(:,:,3);
pic(:,:,3)=r;
subplot(1,2,2);imshow(pic);
title('Changed Image')
