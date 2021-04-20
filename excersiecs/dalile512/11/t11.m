clc;
close all;
clear all;

image = imread('saat.png');
figure;
ax1 = axes();
imshow(image);
title(ax1, 'original image');
a = 0.1; % 10% pixels altered
b = 0.5; % 50% percent white pixels among all altered pixels
n = numel(image(:,:,1));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
idx1 = idx1' + n.*(0:size(image,3)-1);
idx1 = idx1(:);
idx2 = idx2' + n.*(0:size(image,3)-1);
idx2 = idx2(:);
image(idx1) = 255;
image(idx2) = 0;
figure;
ax2 = axes();
imshow(image);
title(ax2, 'noisy  image ');