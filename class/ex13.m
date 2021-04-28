clc;
close all;
clear all;

size = 500;

image = imread("../benchmark/fruits.png");
image = rgb2gray(image);
image = imresize(image, [ size size ]);
image2 = image;

for i = 1 : size
    for j = 1 : size
        image2(i,j) = 255 - image(i, j);
    end
end

miangin(image2)
miangin( saltpeaper(image2, 1000) )
miangin( saltpeaper(image2, 4000) )
miangin( saltpeaper(image2, 50000) )