clc;
close all;
clear;

size = 256;

image = zeros(size, size);
color = 0;

for i = 1 : size
    image(i, 1:size) = color;
    color = color + 1;
end

imshow(uint8(image));