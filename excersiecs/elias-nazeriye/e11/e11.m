close all;
clear all;
clc;


pic=imread('girl.png');  
pic=rgb2gray(pic);
[i,j]=size(pic); 
x = randi([0 ,255] , i ,j);
pic(x<=0+2)=0;
pic(x>=255-2)=255;
imshow(pic);