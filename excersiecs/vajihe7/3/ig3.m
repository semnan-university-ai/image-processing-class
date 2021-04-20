clear all;
close all;
clc;
image = imread('benchmark/fruits.png');
figure;
imshow(image);
a=size(image);
n=size(a);
color=[0 255]'
if n(2)==3
    image=rgb2gray(image);
end
figure;
imshow(image);



