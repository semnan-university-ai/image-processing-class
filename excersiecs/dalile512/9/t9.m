clc;
close all;
clear;
x=input(' Please Enter x: ');
y=input(' Please Enter y: ');
I = imread('saat.png');
figure(1),imshow(I),title('Original photo ');

J = imcrop(I,[0 0 x y]);
figure;
imshow(J);

figure(2),imshow(J),title('Photo cut');

