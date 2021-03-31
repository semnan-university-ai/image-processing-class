close all
clear all
clc

im = imread('cat.png');
figure;
ax1 = axes();
imshow(im);
title(ax1, 'original');
a = 1; 
b = 0.5; 
n = numel(im(:,:,1));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx1 = idx1' + n.*(0:size(im,3)-1);
idx1 = idx1(:);
im(idx1) = 10;
figure;
ax2 = axes();
imshow(im);
title(ax2, 'noisy');
