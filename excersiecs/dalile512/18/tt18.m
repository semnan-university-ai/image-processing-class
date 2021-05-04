close all
clear all
clc
image=imread('watch.png');
im=rgb2gray(image);


 for i=300:600
     for j=300:720
        im(i,j)=255;
     end
 end
 figure;
 imshow(im)