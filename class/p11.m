clc;
close all;
clear all;

image = imread("img/airplane.png");
image = rgb2gray(image);
imagesize = size(image);
colors = zeros(1, 256);

for i = 1 : imagesize(1, 1)
    for j = 1 : imagesize(1, 2)
        colors(1, image(i, j) + 1) = colors(1, image(i, j) + 1) +  1;
    end
end

figure;
plot(colors, '-or');
figure;
imhist(image);