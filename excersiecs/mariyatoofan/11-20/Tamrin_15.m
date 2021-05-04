%Tamrin 15
clear all
close all
clc
I= imread('pool.png');
figure(1)
imshow(I)
g=rgb2gray(I);
figure(2)
imshow(g)
% % binaryImage = g > 250; % or whatever.
% % g(binaryImage) = 0; % Set to 0.
% % figure(3)
% % imshow(g)
% a=rectangle('Position', [360 234 80 80] ); %// draw rectangle on image
% %frm = getframe( a ); %// get the image+rectangle
% xcolor=0.1961;
% %box = [X1, Y1, width, height];
% box = [360 234 80 80];    
% outImage= insertObjectAnnotation(I,'rectangle',box,'Rectangle');
% figure, imshow(outImage), title('Image with rectangle');

g(234:234+90,360:360+90)=50;
imshow(g);