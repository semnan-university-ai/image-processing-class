
clc;
close all;
clear all;  


image = imread("../benchmark/airplane.png");
image = rgb2gray(image);
%imshow(imageArray);  % Display image.
imagesize = size(image);
PatchArray=zeros(100,100);
for i = imagesize(1, 1) : -1 :(imagesize(1, 1)-100) 
    for j = imagesize(1, 2): -1 :(imagesize(1, 2)-100) 
        PatchArray(i,j)= image(i,j);
    end
end
figure,
imshow(uint8(PatchArray));
figure,
imshow(image);