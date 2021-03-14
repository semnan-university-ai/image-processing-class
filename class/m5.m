clc;
close all;
clear all;

image = imread("img/airplane.png");
image = rgb2gray(image);
imagesize = size(image);
temp = zeros(1, 8);
bitplane = zeros( imagesize(1,1)  , imagesize(1, 2) );
bitplanenumber = 4bitplanematlab;

for i = 1 : imagesize(1,1)
    for j = 1 : imagesize(1, 2)
        temp = de2bi(image(i, j), 8);
        
        bitplane(i, j) = temp(1, bitplanenumber);
    end
end

figure;
imshow(bitplane);

figure;
bitplanematlab = bitget(image, bitplanenumber);
imshow(logical(bitplanematlab));