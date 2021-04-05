clc;
clear all;
close all;
I = imread("benchmark/jug.jpeg"); 
subplot(2,2,1) 
imshow(I)
title 'original image' 
% Flip left/right: 
Ir = flipdim(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'flipped image'
% Join the original and flipped images: 
IIr = horzcat(I,Ir); 
subplot(2,2,3:4) 

imshow(IIr)
title 'joined images'
