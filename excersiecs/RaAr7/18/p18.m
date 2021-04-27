close all
clear all
clc

image = imread("../../../benchmark/watch.png");

for i=295:585
    for j=300:700
        if image(i,j) < 125
            image(i,j,1) = 255;
            image(i,j,2) = 255;
            image(i,j,3) = 255;
        end
    end
end

figure
imshow(image);