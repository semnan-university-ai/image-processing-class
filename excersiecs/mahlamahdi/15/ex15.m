clc;
clear;
close all;
a=imread('img/pool.png');
b=rgb2gray(a);
a=rgb2gray(a);
for i= 230:330
    for j=360:460
        b(i,j) = 48;
    end
end
subplot(1,2,1), imshow(a);
subplot(1,2,2), imshow(b);
