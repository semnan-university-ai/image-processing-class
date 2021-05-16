clc;
close all;
clear;

size = 512;

image = imread("../benchmark/fruits.png");
image = rgb2gray(image);
image = imresize(image, [ size size ]);

image2 = median(image);
image3 = mymean(image);
image4 = saltpeaper(image, 100000);

miangin(image2)
miangin(image3)
miangin(image4)