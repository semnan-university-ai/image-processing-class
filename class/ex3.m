clc;
close all;
clear;

image = imread("../benchmark/baboon.png");
[ width, height, depth ] = size(image);
image_output = zeros(width, height);

for i = 1 : width
    for j = 1 : height
        image_output(i, j) = round( ...
        (double(image(i, j, 1)) + ...
        double(image(i, j, 2)) + ...
        double(image(i, j, 3)) ...
        ) / 3 );
    end
end

image_output = uint8(image_output);
figure, imshow(image_output);
figure, imshow(rgb2gray(image));