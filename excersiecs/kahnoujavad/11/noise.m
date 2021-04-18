clc;
clear all;
close all;
image=rgb2gray(imread("d:/image-processing-class/benchmark/fruits.png"));
 image1=rgb2gray(imread("d:/image-processing-class/benchmark/girl.png"));
for i=1:50000
    a=randi([1,size(image,1)]);
    b=randi([1,size(image,2)]);
    c=randi([1,size(image1,1)]);
    d=randi([1,size(image1,2)]);
    image(a,b)=randi([0,1])*255;
    image1(c,d)=randi([0,1])*255;
end
subplot(1,2,1),imshow(image),title("fruits");
subplot(1,2,2),imshow(image1),title("girl");

