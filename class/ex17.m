clc;
close all;
clear;

image = imread("../benchmark/mountain.png");
[ x, y ] = size(image); 


for i = 1 : x / 3
    for j = 1 : y
        if(image(i, j) > 232 && image(i, j) < 250)
        	image(i, j) = 0;
        end
    end
end

figure, imshow(image);
figure, imshow(median(image));