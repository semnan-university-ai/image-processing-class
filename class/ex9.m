clc;
close all;
clear;

image = imread("../benchmark/airplane.png");
image = rgb2gray(image);
image_size = size(image);

width = 300;
height = 300;

if image_size(1, 1) < height
    height = image_size(1, 1);
end

if image_size(1, 2) < width
    width = image_size(1, 2);
end

newimage = zeros(width, height);

for i = 1 : width
    for j = 1 : height
        newimage(i, j) = image(i, j);
    end
end

imshow(uint8(newimage));