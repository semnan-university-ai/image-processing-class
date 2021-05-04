close all;
clear all;
clc;

pic = imread("girl.png");
picRed=pic(:,:,1);
picGreen=pic(:,:,2);
picBlue=pic(:,:,3);
figure,imhist(picRed);
figure,imhist(picGreen);
figure,imhist(picBlue);
figure,e231(pic,"r");
figure,e231(pic,"g");
figure,e231(pic,"b");