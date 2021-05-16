clc;
clear all;
close all;
img = imread("D:/image-processing-class/benchmark/baboon.png");
subplot(1,2,1);
imshow(img);
title('orginal image');
R = img(:, :, 1);
G = img(:, :, 2);
B = img(:, :, 3);
[a,b,c] = size(img);
image = zeros(a, b, c, 'uint8');
for i=1:a
   for j=1:b
       image(i,j,1)=B(i,j);
       image(i,j,2)=G(i,j);
       image(i,j,3)=R(i,j);
   end
end
subplot(1,2,2);
imshow(image);
title('edite image');