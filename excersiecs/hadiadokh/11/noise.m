clc;clear;close all;
pic=rgb2gray(imread('d:\tamrin\11\yas.jpg'));
 
for i=1:50000
    X=randi([1,size(pic,1)]);
    Y=randi([1,size(pic,2)]);
    pic(X,Y)=randi([0,1])*255;
end
imshow(pic);