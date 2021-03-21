clc;
close all;
clear;


b=imread('D:\tamrin 3\pool.png');

c=rgb2gray(b);

subplot(121);imshow(b);

subplot(122);imshow(c);