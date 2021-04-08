clc;clear;close all;
img=rgb2gray(imread("../../../benchmark/cat.png"));
 
for i=1:30000
    X=randi([1,size(img,1)]);
    Y=randi([1,size(img,2)]);
    img(X,Y)=randi([0,1])*255;
end
imshow(img);