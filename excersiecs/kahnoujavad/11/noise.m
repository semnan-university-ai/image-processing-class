clc;
clear all;
close all;
image=rgb2gray(imread("d:/image-processing-class/benchmark/fruits.png"));
 
for i=1:50000
    a=randi([1,size(image,1)]);
    b=randi([1,size(image,2)]);
    image(a,b)=randi([0,1])*255;
end
imshow(image);