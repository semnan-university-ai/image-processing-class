clc;
close all;
clear;

image = imread("../benchmark/pool.png");
figure, imshow(image);
image = rgb2gray(image);
image = imresize(image, [300 300]);
[ x, y, z ] = size(image); 
step_size = 25;

for i = 150 : step_size - 1 : x - step_size
    for j = 150 : step_size - 1 : y - step_size
        imcut(image, step_size, i, i+step_size, j, j+step_size, 0);
    end
end

for i = 180 : x
    for j = 180 : y
        if(image(i, j) > 40)
        	image(i, j) = 48;
        end
    end
end

figure, imshow(image);