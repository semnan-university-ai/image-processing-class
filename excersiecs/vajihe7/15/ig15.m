close all
clear all
clc
image=imread("pool.png");
image=rgb2gray(image);
figure;
imshow(image)
for i=200:365
    for j=365:470
        image(i,j)=image(i-1,j);
    end
end
figure;
imshow(image)