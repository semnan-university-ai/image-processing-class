clc;
close all;
clear all;

addpath("../../../benchmark/");
pic = imread("lena.png");

subplot(2,2,1);imshow(pic);title('original image')
hisR=his(pic,1);
hisG=his(pic,2);
hisB=his(pic,3);
 subplot(2,2,2);bar(hisR);title('Red')
 subplot(2,2,3);bar(hisG);title('Green')
 subplot(2,2,4);bar(hisB);title('Blue')
