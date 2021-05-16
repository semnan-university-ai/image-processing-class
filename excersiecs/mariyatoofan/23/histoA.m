clc;clear;close all;

image = imread("../../../benchmark/peppers.png");
R=tohist(image(:, :, 1));
G=tohist(image(:, :, 2));
B=tohist(image(:, :, 3));
for i = 1:255
    RR(1:255-R(i),i)=255;
    GG(1:255-G(i),i)=255;
    BB(1:255-B(i),i)=255;
end
imshow(image);
figure;
imshow(RR);
title('R-hist');
figure;
imshow(GG);
title('G-hist');
figure;
imshow(BB),title('B-hist');