close all;
clear all;
clc;

%a = 2;
%if (a == 2)
%    a
%elseif( a == 3)
%    a
%else
%    a
%end

image1 = imread("img/baboon.png");
image1 = rgb2gray(image1);

figure,
%imhist(image1);
imshow(image1);

imagesize = size(image1);

for i = 1 : imagesize(1,1)
    for j = 1 : imagesize(1, 2)
        image1(i, j) = 255 - image1(i, j);
    end
end

figure,
%imhist(image1);
imshow(image1);

for i = 1 : imagesize(1,1)
    for j = 1 : imagesize(1, 2)
        image1(i, j) = 255 - image1(i, j);
    end
end

figure,
%imhist(image1);
imshow(image1);
