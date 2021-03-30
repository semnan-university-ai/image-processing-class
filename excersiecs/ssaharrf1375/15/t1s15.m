clc;
clear all;
close all;

image_pool = imread('C:\Program Files\Polyspace\R2019b\bin\img\pool.png');
noise_pool = imnoise(image_pool,'salt & pepper');
subplot(2,2,1); imshow(noise_pool);

image_grayscale = rgb2gray(image_pool);
subplot(2,2,2); imshow(image_grayscale);

[x,y] = size(image_grayscale);

for i=230:x
    for j=360:y
        if(image_grayscale(i,j) > 1)
            image_grayscale(i,j) = 50;
        end
    end
end
subplot(2,2,3); imshow(image_grayscale);