clc;
close all;
clear all;
image=imread('benchmark\pool.png');
image1=rgb2gray(image);
image=rgb2gray(image);
for i=200:365
    for j=365:470
        image(i,j)=image(i-1,j);
    end
end
subplot(1,2,1), imshow(image1);
title('old') 
subplot(1,2,2), imshow(image);
title('new') 

