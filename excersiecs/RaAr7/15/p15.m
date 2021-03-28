close all
clear all
clc

image = imread("img\pool.png");
image2 = rgb2gray(image);

[x,y] = size(image2);

for i=230:x
    for j=360:y
        if(image2(i,j) > 0)
            image2(i,j) = 49;
        end
    end
end


figure
imshow(image);
figure
imshow(image2);