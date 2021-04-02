clc;
clear all;
close all;
img = imread('pool.png');
subplot(3,1,1); imshow(img),title('  image');
image = rgb2gray(img);

subplot(3,1,2); imshow(image),title(' rgb2gray image');

[x,y] = size(image);

for i=230:x
    for j=360:y
       
            image(i,j) = image(i-1,j);
        end
    end

subplot(3,1,3); imshow(image),title('New image');