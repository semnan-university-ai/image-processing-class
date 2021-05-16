clc;
close all;
clear;

image = imread("../benchmark/watch.png");
image = rgb2gray(image);
image = imresize(image, [300 300]);
figure, imshow(image);
[ x, y, z ] = size(image); 
step_size = 100;

for i = 1 : step_size - 1 : x - step_size
    for j = 1 : step_size - 1 : y - step_size
        %imcut(image, step_size, i, i+step_size, j, j+step_size, 0);
    end
end

for i = 110 : 240
    for j = 100 : 220
        image(i, j) = 255;
    end
end

figure, imshow(image);