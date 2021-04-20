clc;
close all;
clear all;

img = imread('halfjug.jpg');
imgSize = size(img);
fulljug = zeros(imgSize(1,1),imgSize(1,2)*2,'uint8');
flipimage = flip(img,2);

fulljug = cat(2,flipimage,img);

imshow(fulljug);