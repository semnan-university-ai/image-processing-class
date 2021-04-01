clc;
clear;
close all;

orginalPic=imread('fruits.png');  
orginalPic=rgb2gray(orginalPic);
picSize=size(orginalPic); 

noise=6;
peppersColor=0;
saltColor=255;

x = randi([0,255],picSize(1),picSize(2));
orginalPic(x <= noise+0) = peppersColor;  
orginalPic(x >=255-noise) = saltColor;
imshow(orginalPic);