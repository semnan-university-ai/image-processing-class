clc
clear all;
close all;
img1=imread('img\watch.png');
img1=rgb2gray(img1);
for i=280:580
    for j=329:700
             img1(i,j)=255;
  
    end
end
imshow(img1);